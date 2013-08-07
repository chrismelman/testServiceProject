module webservices/mappers/B
function mapperEditedB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  if ( ! json.has("test9") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property test9", "warning"));
  }
  else
  {
    if ( json.get("test9") == json.NULL )
    {
      ent.test9 := null;
    }
    else
    {
      var temp := json.getJSONObject("test9") ;
      var localent := ( loadEntity("B", temp.getString("id").parseUUID()) as B ) ;
      if ( localent != null )
      {
        ent.test9 := localent;
      }
      else
      {
        localerrors.put(makeJSONErrorObject("Trying to set non existing object for property: test9", "warning"));
      }
    }
  }
  if ( ! json.has("test8") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property test8", "warning"));
  }
  else
  {
    if ( json.get("test8") == json.NULL )
    {
      ent.test8 := null;
    }
    else
    {
      var temp := json.getJSONObject("test8") ;
      var localent := ( loadEntity("B", temp.getString("id").parseUUID()) as B ) ;
      if ( localent != null )
      {
        ent.test8 := localent;
      }
      else
      {
        localerrors.put(makeJSONErrorObject("Trying to set non existing object for property: test8", "warning"));
      }
    }
  }
  if ( ! json.has("test6") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property test6", "warning"));
  }
  else
  {
    if ( json.get("test6") == json.NULL )
    {
      ent.test6 := null;
    }
    else
    {
      var temp := json.getJSONArray("test6") ;
      var collection := List<B>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("B", obj.getString("id").parseUUID()) as B ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: test6", "warning"));
            }
          }
        }
      if ( ent.test6 != collection )
      {
        ent.test6 := collection;
      }
    }
  }
  if ( ! json.has("test3") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property test3", "warning"));
  }
  else
  {
    if ( json.get("test3") == json.NULL )
    {
      ent.test3 := null;
    }
    else
    {
      var temp := json.getJSONArray("test3") ;
      var collection := List<B>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("B", obj.getString("id").parseUUID()) as B ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: test3", "warning"));
            }
          }
        }
      if ( ent.test3 != collection )
      {
        ent.test3 := collection;
      }
    }
  }
  if ( ! json.has("test2") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property test2", "warning"));
  }
  else
  {
    if ( json.get("test2") == json.NULL )
    {
      ent.test2 := null;
    }
    else
    {
      var temp := json.getJSONArray("test2") ;
      var collection := Set<A>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("A", obj.getString("id").parseUUID()) as A ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: test2", "warning"));
            }
          }
        }
      if ( ent.test2 != collection )
      {
        ent.test2 := collection;
      }
    }
  }
  if ( ! json.has("test1") )
  {
    localerrors.put(makeJSONErrorObject("Entity is missing property test1", "warning"));
  }
  else
  {
    if ( json.get("test1") == json.NULL )
    {
      ent.test1 := null;
    }
    else
    {
      var temp := json.getJSONArray("test1") ;
      var collection := List<A>() ;
      for ( count : Int from 0 to temp.length() )
        {
          log(count);
          if ( temp.get(count) != json.NULL )
          {
            var obj := temp.getJSONObject(count) ;
            var localent := ( loadEntity("A", obj.getString("id").parseUUID()) as A ) ;
            if ( localent != null )
            {
              collection.add(localent);
            }
            else
            {
              localerrors.put(makeJSONErrorObject("Trying to add non existing object for property: test1", "warning"));
            }
          }
        }
      if ( ent.test1 != collection )
      {
        ent.test1 := collection;
      }
    }
  }
}
function mapperNewB ( ent : B , json : JSONObject , localerrors : JSONArray ) : Void
{
  mapperEditedB(ent, json, localerrors);
}