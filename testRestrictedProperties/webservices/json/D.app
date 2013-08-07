module webservices/json/D
extend entity D {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.c != null )
    {
      object.put("c", c);
    }
    if ( this.a != null )
    {
      object.put("a", a);
    }
    if ( this.d != null )
    {
      object.put("D_d", d);
    }
    if ( this.id != null )
    {
      object.put("id", id);
    }
    object.put("typeField", "D");
    return object;
  }
  function toJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.c == null )
    {
      object.put("c", ( null as JSONObject ));
    }
    else
    {
      object.put("c", this.c);
    }
    if ( this.a == null )
    {
      object.put("a", ( null as JSONObject ));
    }
    else
    {
      object.put("a", this.a);
    }
    if ( this.d == null )
    {
      object.put("D_d", ( null as JSONObject ));
    }
    else
    {
      object.put("D_d", this.d);
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
    object.put("typeField", "D");
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
  function toJSONFromSuperC ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.c == null )
    {
      object.put("c", ( null as JSONObject ));
    }
    else
    {
      object.put("c", this.c);
    }
    if ( this.a == null )
    {
      object.put("a", ( null as JSONObject ));
    }
    else
    {
      object.put("a", this.a);
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
    object.put("typeField", "C");
    return object;
  }
}