module webservices/json/B
extend entity B {
  function toSimpleJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.id != null )
    {
      object.put("id", id);
    }
    return object;
  }
  function toJSON ( ) : JSONObject
  {
    var object := JSONObject() ;
    if ( this.test9 == null )
    {
      object.put("test9", ( null as JSONObject ));
    }
    else
    {
      object.put("test9", makeJSONObjectFromEntityRef(this.test9));
    }
    if ( this.test8 == null )
    {
      object.put("test8", ( null as JSONObject ));
    }
    else
    {
      object.put("test8", makeJSONObjectFromEntityRef(this.test8));
    }
    if ( this.test6 == null )
    {
      object.put("test6", ( null as JSONObject ));
    }
    else
    {
      var arraytest6 := JSONArray() ;
      for ( b_2935 : B in this.test6 )
        {
          arraytest6.put(makeJSONObjectFromEntityRef(b_2935));
        }
      object.put("test6", arraytest6);
    }
    if ( this.test3 == null )
    {
      object.put("test3", ( null as JSONObject ));
    }
    else
    {
      var arraytest3 := JSONArray() ;
      for ( c_2935 : B in this.test3 )
        {
          arraytest3.put(makeJSONObjectFromEntityRef(c_2935));
        }
      object.put("test3", arraytest3);
    }
    if ( this.test2 == null )
    {
      object.put("test2", ( null as JSONObject ));
    }
    else
    {
      var arraytest2 := JSONArray() ;
      for ( d_2935 : A in this.test2 )
        {
          arraytest2.put(makeJSONObjectFromEntityRef(d_2935));
        }
      object.put("test2", arraytest2);
    }
    if ( this.test1 == null )
    {
      object.put("test1", ( null as JSONObject ));
    }
    else
    {
      var arraytest1 := JSONArray() ;
      for ( e_2935 : A in this.test1 )
        {
          arraytest1.put(makeJSONObjectFromEntityRef(e_2935));
        }
      object.put("test1", arraytest1);
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