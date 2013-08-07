module webservices/mappers/C
function mapperEditedC ( ent : C , json : JSONObject , localerrors : JSONArray ) : Void
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
  if ( sub == "D" )
  {
    mapperEditedD(( ent as D ), json, localerrors);
    return ;
  }
  if ( sub != "C" )
  {
    localerrors.put(makeJSONErrorObject("Entity has a incorrect Type", "error"));
    return ;
  }
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
}
function mapperNewC ( ent : C , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedC(ent, json, localerrors);
}