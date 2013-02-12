module webservices/mappers/User
function mapperEditedUser ( ent : User , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("Person_name") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property name", "warning"));
  }
  else
  {
    if ( json.get("Person_name") == json.NULL )
    {
      ent.name := null;
    }
    else
    {
      ent.name := json.getString("Person_name");
    }
  }
  if ( ! json.has("User_place") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property place", "warning"));
  }
  else
  {
    if ( json.get("User_place") == json.NULL )
    {
      ent.place := null;
    }
    else
    {
      var temp := json.getJSONObject("User_place") ;
      var localent := ( loadEntity("Place", temp.getString("id").parseUUID()) as Place ) ;
      if ( localent != null )
      {
        ent.place := localent;
      }
      else
      {
        localerrors.put(makeJSONErrorObject("Trying to set non existing object for property: place", "warning"));
      }
    }
  }
}
function mapperNewUser ( ent : User , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedUser(ent, json, localerrors);
}