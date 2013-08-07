module webservices/mappers/D
function mapperEditedD ( ent : D , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("c") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property c", "warning"));
  }
  else
  {
    if ( json.get("c") == json.NULL )
    {
      ent.c := null;
    }
    else
    {
      ent.c := json.getString("c");
    }
  }
  if ( ! json.has("a") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property a", "warning"));
  }
  else
  {
    if ( json.get("a") == json.NULL )
    {
      ent.a := null;
    }
    else
    {
      ent.a := json.getString("a");
    }
  }
  if ( ! json.has("D_d") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property d", "warning"));
  }
  else
  {
    if ( json.get("D_d") == json.NULL )
    {
      ent.d := null;
    }
    else
    {
      ent.d := json.getString("D_d");
    }
  }
}
function mapperNewD ( ent : D , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedD(ent, json, localerrors);
}