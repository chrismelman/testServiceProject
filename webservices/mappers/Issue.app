module webservices/mappers/Issue
function mapperEditedIssue ( ent : Issue , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("project") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property project", "warning"));
  }
  else
  {
    if ( json.get("project") == json.NULL )
    {
      ent.project := null;
    }
    else
    {
      var temp := json.getJSONObject("project") ;
      var localent := ( loadEntity("Project", temp.getString("id").parseUUID()) as Project ) ;
      if ( localent != null )
      {
        ent.project := localent;
      }
      else
      {
        localerrors.put(makeJSONErrorObject("Trying to set non existing object for property: project", "warning"));
      }
    }
  }
  if ( ! json.has("title") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property title", "warning"));
  }
  else
  {
    if ( json.get("title") == json.NULL )
    {
      ent.title := null;
    }
    else
    {
      ent.title := json.getString("title");
    }
  }
}
function mapperNewIssue ( ent : Issue , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedIssue(ent, json, localerrors);
}