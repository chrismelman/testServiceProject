module webservices/mappers/Project
function mapperEditedProject ( ent : Project , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("issues") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property issues", "warning"));
  }
  else
  {
    if ( json.get("issues") == json.NULL )
    {
      ent.issues := null;
    }
    else
    {
      var temp := json.getJSONArray("issues") ;
      var collection := Set<Issue>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("Issue", obj.getString("id").parseUUID()) as Issue ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: issues", "warning"));
            }
          }
        }
      if ( ent.issues != collection )
      {
        ent.issues := collection;
      }
    }
  }
  if ( ! json.has("name") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property name", "warning"));
  }
  else
  {
    if ( json.get("name") == json.NULL )
    {
      ent.name := null;
    }
    else
    {
      ent.name := json.getString("name");
    }
  }
}
function mapperNewProject ( ent : Project , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedProject(ent, json, localerrors);
}