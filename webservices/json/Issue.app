module webservices/json/Issue
extend entity Issue {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.title != null )
    {
      object.put("title", title);
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
    if ( this.project == null )
    {
      object.put("project", ( null as JSONObject ));
    }
    else
    {
      object.put("project", makeJSONObjectFromEntityRef(this.project));
    }
    if ( this.title == null )
    {
      object.put("title", ( null as JSONObject ));
    }
    else
    {
      object.put("title", this.title);
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