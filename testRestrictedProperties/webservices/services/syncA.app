module webservices/services/syncA
service webservice_generated_syncA ( )
{
  var json := JSONObject() ;
  var errors := JSONArray() ;
  var request := JSONArray(readRequestBody()) ;
  var result := JSONArray() ;
  if ( request != null )
  {
    for ( count : Int from 0 to request.length() )
      {
        var JSONEntList := request.getJSONObject(count).getJSONArray("value") ;
        var entname := request.getJSONObject(count).getString("name") ;
        if ( JSONEntList != null && entname != null )
        {
          for ( innercount : Int from 0 to JSONEntList.length() )
            {
              var tl := loadEntity(entname, JSONEntList.getJSONObject(innercount).getString("id").parseUUID()) ;
              var timestamp := JSONEntList.getJSONObject(innercount).getLong("lastSynced") ;
              if ( tl != null && timestamp != null )
              {
                for ( ent : A in getAllAForTopEntity(tl) where timestamp == 0 || ent.modified != null && ent.modified.getTime() > timestamp && ent.mayReadSynchronize() )
                  {
                    result.put(addDirtyFalse(ent.toJSON()));
                  }
              }
              else
              {
                errors.put("not valid parameter format missing/incorrect id/lastSynced");
              }
            }
        }
        else
        {
          errors.put("not valid parameter format missing/incorrect value/name");
        }
      }
  }
  else
  {
    errors.put("not valid parameter format");
  }
  log("number of entities for syncA: " + result.length());
  json.put("errors", errors);
  json.put("result", result);
  return json;
}