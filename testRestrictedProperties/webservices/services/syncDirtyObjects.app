module webservices/services/syncDirtyObjects
service webservice_generated_syncDirtyObjects ( )
{
  var json := JSONObject() ;
  var errors := JSONArray() ;
  var request := JSONArray(readRequestBody()) ;
  var result := JSONArray() ;
  if ( request != null )
  {
    for ( count : Int from 0 to request.length() )
      {
        var jsontemp := request.getJSONObject(count) ;
        var kind := jsontemp.getString("name") ;
        var entities := jsontemp.getJSONArray("value") ;
        if ( jsontemp != null && kind != null && entities != null )
        {
          if ( kind == "A" )
          {
            for ( count : Int from 0 to entities.length() )
              {
                var localErrors := JSONArray() ;
                var entity := ( loadEntity("A", entities.getJSONObject(count).getString("id").parseUUID()) as A ) ;
                if ( entity == null )
                {
                  localErrors.put(makeJSONErrorObject("Object does not exist", "warning"));
                }
                else
                {
                  if ( entity.mayModifySynchronize() )
                  {
                    if ( entity.version <= entities.getJSONObject(count).getInt("version") )
                    {
                      mapperEditedA(entity, entities.getJSONObject(count), localErrors);
                      var exceptions := entity.validateSave() ;
                      addValidateExceptionsToErrors(exceptions, localErrors);
                      if ( containsErrorInJSONArray(localErrors) )
                      {
                        rollbackAndStartNewTransaction();
                      }
                      else
                      {
                        var uncheckedExceptions := commitAndStartNewTransaction() ;
                        addValidationExceptionsToLocalErrors(uncheckedExceptions, localErrors);
                      }
                    }
                    else
                    {
                      localErrors.put(makeJSONErrorObject("Object already has newer version", "warning"));
                    }
                  }
                  else
                  {
                    localErrors.put(makeJSONErrorObject("No rights to modify this object", "warning"));
                  }
                }
                if ( localErrors.length() > 0 )
                {
                  var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "A", entities.getJSONObject(count).getString("id")) ;
                  if ( containsErrorInJSONArray(localErrors) && entity != null )
                  {
                    var entity := ( loadEntity("A", entities.getJSONObject(count).getString("id").parseUUID()) as A ) ;
                    jsonErrorObject.put("restore", entity.toJSON());
                  }
                  errors.put(jsonErrorObject);
                }
              }
          }
          else
          {
            if ( kind == "B" )
            {
              for ( count : Int from 0 to entities.length() )
                {
                  var localErrors := JSONArray() ;
                  var entity := ( loadEntity("B", entities.getJSONObject(count).getString("id").parseUUID()) as B ) ;
                  if ( entity == null )
                  {
                    localErrors.put(makeJSONErrorObject("Object does not exist", "warning"));
                  }
                  else
                  {
                    if ( entity.mayModifySynchronize() )
                    {
                      if ( entity.version <= entities.getJSONObject(count).getInt("version") )
                      {
                        mapperEditedB(entity, entities.getJSONObject(count), localErrors);
                        var exceptions := entity.validateSave() ;
                        addValidateExceptionsToErrors(exceptions, localErrors);
                        if ( containsErrorInJSONArray(localErrors) )
                        {
                          rollbackAndStartNewTransaction();
                        }
                        else
                        {
                          var uncheckedExceptions := commitAndStartNewTransaction() ;
                          addValidationExceptionsToLocalErrors(uncheckedExceptions, localErrors);
                        }
                      }
                      else
                      {
                        localErrors.put(makeJSONErrorObject("Object already has newer version", "warning"));
                      }
                    }
                    else
                    {
                      localErrors.put(makeJSONErrorObject("No rights to modify this object", "warning"));
                    }
                  }
                  if ( localErrors.length() > 0 )
                  {
                    var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "B", entities.getJSONObject(count).getString("id")) ;
                    if ( containsErrorInJSONArray(localErrors) && entity != null )
                    {
                      var entity := ( loadEntity("B", entities.getJSONObject(count).getString("id").parseUUID()) as B ) ;
                      jsonErrorObject.put("restore", entity.toJSON());
                    }
                    errors.put(jsonErrorObject);
                  }
                }
            }
            else
            {
              if ( kind == "C" )
              {
                for ( count : Int from 0 to entities.length() )
                  {
                    var localErrors := JSONArray() ;
                    var entity := ( loadEntity("C", entities.getJSONObject(count).getString("id").parseUUID()) as C ) ;
                    if ( entity == null )
                    {
                      localErrors.put(makeJSONErrorObject("Object does not exist", "warning"));
                    }
                    else
                    {
                      if ( entity.mayModifySynchronize() )
                      {
                        if ( entity.version <= entities.getJSONObject(count).getInt("version") )
                        {
                          mapperEditedC(entity, entities.getJSONObject(count), localErrors);
                          var exceptions := entity.validateSave() ;
                          addValidateExceptionsToErrors(exceptions, localErrors);
                          if ( containsErrorInJSONArray(localErrors) )
                          {
                            rollbackAndStartNewTransaction();
                          }
                          else
                          {
                            var uncheckedExceptions := commitAndStartNewTransaction() ;
                            addValidationExceptionsToLocalErrors(uncheckedExceptions, localErrors);
                          }
                        }
                        else
                        {
                          localErrors.put(makeJSONErrorObject("Object already has newer version", "warning"));
                        }
                      }
                      else
                      {
                        localErrors.put(makeJSONErrorObject("No rights to modify this object", "warning"));
                      }
                    }
                    if ( localErrors.length() > 0 )
                    {
                      var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "C", entities.getJSONObject(count).getString("id")) ;
                      if ( containsErrorInJSONArray(localErrors) && entity != null )
                      {
                        var entity := ( loadEntity("C", entities.getJSONObject(count).getString("id").parseUUID()) as C ) ;
                        jsonErrorObject.put("restore", entity.toJSON());
                      }
                      errors.put(jsonErrorObject);
                    }
                  }
              }
              else
              {
                errors.put("type is undefined: " + kind);
              }
            }
          }
        }
        else
        {
          errors.put("not valid parameter format missing/incorrect value/name/object");
        }
      }
  }
  else
  {
    errors.put("not valid parameter format");
  }
  json.put("errors", errors);
  json.put("result", result);
  return json;
}