module webservices/mappers/Person
function mapperEditedPerson ( ent : Person , json : JSONObject , localerrors : JSONArray ) : Void
{
  var sub := "" ;
  if ( ! json.has("typeField") )
  {
    localerrors.put(makeJSONErrorObject("Entity misses property typeField ", "error"));
    return ;
  }
  else
  {
    sub := json.getString("typeField");
  }
  if ( sub == "User" )
  {
    mapperEditedUser(( ent as User ), json, localerrors);
    return ;
  }
  if ( sub != "Person" )
  {
    localerrors.put(makeJSONErrorObject("Entity has a incorrect Type", "error"));
    return ;
  }
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
}
function mapperNewPerson ( ent : Person , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedPerson(ent, json, localerrors);
}