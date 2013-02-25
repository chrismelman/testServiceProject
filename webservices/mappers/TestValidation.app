module webservices/mappers/TestValidation
function mapperEditedTestValidation ( ent : TestValidation , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("testEmail") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property testEmail", "warning"));
  }
  else
  {
    if ( json.get("testEmail") == json.NULL )
    {
      ent.testEmail := null;
    }
    else
    {
      var emailobj := ( json.getString("testEmail") as Email ) ;
      if ( emailobj.isValid() )
      {
        ent.testEmail := emailobj;
      }
      else
      {
        localerrors.put(makeJSONErrorObject("testEmail: Not a valid email address", "error"));
      }
    }
  }
  if ( ! json.has("testBoolean") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property testBoolean", "warning"));
  }
  else
  {
    if ( json.get("testBoolean") == json.NULL )
    {
      ent.testBoolean := null;
    }
    else
    {
      ent.testBoolean := json.getBoolean("testBoolean");
    }
  }
  if ( ! json.has("testFloat") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property testFloat", "warning"));
  }
  else
  {
    if ( json.get("testFloat") == json.NULL )
    {
      ent.testFloat := null;
    }
    else
    {
      ent.testFloat := Double(json.getDouble("testFloat")).floatValue();
    }
  }
  if ( ! json.has("testString") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property testString", "warning"));
  }
  else
  {
    if ( json.get("testString") == json.NULL )
    {
      ent.testString := null;
    }
    else
    {
      ent.testString := json.getString("testString");
    }
  }
  if ( ! json.has("testInt") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property testInt", "warning"));
  }
  else
  {
    if ( json.get("testInt") == json.NULL )
    {
      ent.testInt := null;
    }
    else
    {
      ent.testInt := json.getInt("testInt");
    }
  }
}
function mapperNewTestValidation ( ent : TestValidation , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedTestValidation(ent, json, localerrors);
}