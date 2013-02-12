module webservices/mappers/Place
function mapperEditedPlace ( ent : Place , json : JSONObject , localerrors : JSONArray ) : Void
{
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
function mapperNewPlace ( ent : Place , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedPlace(ent, json, localerrors);
}