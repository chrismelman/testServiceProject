module webservices/services/getTopLevelEntities
service webservice_generated_getTopLevelEntities ( )
{
  var json := JSONObject() ;
  var errors := JSONArray() ;
  var result := JSONArray() ;
  var array := JSONArray() ;
  var jsonobj := JSONObject() ;
  for ( topent : A in A.all() )
    {
      if ( topent.mayReadSynchronize() )
      {
        array.put(topent.toSimpleJSON());
      }
    }
  jsonobj.put("name", "A");
  jsonobj.put("value", array);
  result.put(jsonobj);
  json.put("errors", errors);
  json.put("result", result);
  return json;
}