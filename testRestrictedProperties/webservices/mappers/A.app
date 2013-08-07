module webservices/mappers/A
function mapperEditedA ( ent : A , json : JSONObject , localerrors : JSONArray ) : Void
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
function mapperNewA ( ent : A , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedA(ent, json, localerrors);
}