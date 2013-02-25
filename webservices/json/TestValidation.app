module webservices/json/TestValidation
extend entity TestValidation {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.testEmail != null )
    {
      object.put("testEmail", testEmail);
    }
    if ( this.testBoolean != null )
    {
      object.put("testBoolean", testBoolean);
    }
    if ( this.testFloat != null )
    {
      object.put("testFloat", testFloat);
    }
    if ( this.testString != null )
    {
      object.put("testString", testString);
    }
    if ( this.testInt != null )
    {
      object.put("testInt", testInt);
    }
    if ( this.id != null )
    {
      object.put("id", id);
    }
    return object;
  }
  function toJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.testEmail == null )
    {
      object.put("testEmail", ( null as JSONObject ));
    }
    else
    {
      object.put("testEmail", this.testEmail);
    }
    if ( this.testBoolean == null )
    {
      object.put("testBoolean", ( null as JSONObject ));
    }
    else
    {
      object.put("testBoolean", this.testBoolean);
    }
    if ( this.testFloat == null )
    {
      object.put("testFloat", ( null as JSONObject ));
    }
    else
    {
      object.put("testFloat", this.testFloat);
    }
    if ( this.testString == null )
    {
      object.put("testString", ( null as JSONObject ));
    }
    else
    {
      object.put("testString", this.testString);
    }
    if ( this.testInt == null )
    {
      object.put("testInt", ( null as JSONObject ));
    }
    else
    {
      object.put("testInt", this.testInt);
    }
    if ( this.version == null )
    {
      object.put("version", ( null as JSONObject ));
    }
    else
    {
      object.put("version", this.version);
    }
    if ( this.id == null )
    {
      object.put("id", ( null as JSONObject ));
    }
    else
    {
      object.put("id", this.id);
    }
    return object;
  }
  function toMinimalJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.version != null )
    {
      object.put("version", version);
    }
    if ( this.id != null )
    {
      object.put("id", id);
    }
    return object;
  }
}