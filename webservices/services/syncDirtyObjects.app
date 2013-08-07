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
          if ( kind == "Project" )
          {
            for ( count : Int from 0 to entities.length() )
              {
                var localErrors := JSONArray() ;
                var entity := ( loadEntity("Project", entities.getJSONObject(count).getString("id").parseUUID()) as Project ) ;
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
                      mapperEditedProject(entity, entities.getJSONObject(count), localErrors);
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
                  var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Project", entities.getJSONObject(count).getString("id")) ;
                  if ( containsErrorInJSONArray(localErrors) && entity != null )
                  {
                    var entity := ( loadEntity("Project", entities.getJSONObject(count).getString("id").parseUUID()) as Project ) ;
                    jsonErrorObject.put("restore", entity.toJSON());
                  }
                  errors.put(jsonErrorObject);
                }
              }
          }
          else
          {
            if ( kind == "Issue" )
            {
              for ( count : Int from 0 to entities.length() )
                {
                  var localErrors := JSONArray() ;
                  var entity := ( loadEntity("Issue", entities.getJSONObject(count).getString("id").parseUUID()) as Issue ) ;
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
                        mapperEditedIssue(entity, entities.getJSONObject(count), localErrors);
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
                    var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Issue", entities.getJSONObject(count).getString("id")) ;
                    if ( containsErrorInJSONArray(localErrors) && entity != null )
                    {
                      var entity := ( loadEntity("Issue", entities.getJSONObject(count).getString("id").parseUUID()) as Issue ) ;
                      jsonErrorObject.put("restore", entity.toJSON());
                    }
                    errors.put(jsonErrorObject);
                  }
                }
            }
            else
            {
              if ( kind == "TestValidation" )
              {
                for ( count : Int from 0 to entities.length() )
                  {
                    var localErrors := JSONArray() ;
                    var entity := ( loadEntity("TestValidation", entities.getJSONObject(count).getString("id").parseUUID()) as TestValidation ) ;
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
                          mapperEditedTestValidation(entity, entities.getJSONObject(count), localErrors);
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
                      var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "TestValidation", entities.getJSONObject(count).getString("id")) ;
                      if ( containsErrorInJSONArray(localErrors) && entity != null )
                      {
                        var entity := ( loadEntity("TestValidation", entities.getJSONObject(count).getString("id").parseUUID()) as TestValidation ) ;
                        jsonErrorObject.put("restore", entity.toJSON());
                      }
                      errors.put(jsonErrorObject);
                    }
                  }
              }
              else
              {
                if ( kind == "Person" )
                {
                  for ( count : Int from 0 to entities.length() )
                    {
                      var localErrors := JSONArray() ;
                      var entity := ( loadEntity("Person", entities.getJSONObject(count).getString("id").parseUUID()) as Person ) ;
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
                            mapperEditedPerson(entity, entities.getJSONObject(count), localErrors);
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
                        var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Person", entities.getJSONObject(count).getString("id")) ;
                        if ( containsErrorInJSONArray(localErrors) && entity != null )
                        {
                          var entity := ( loadEntity("Person", entities.getJSONObject(count).getString("id").parseUUID()) as Person ) ;
                          jsonErrorObject.put("restore", entity.toJSON());
                        }
                        errors.put(jsonErrorObject);
                      }
                    }
                }
                else
                {
                  if ( kind == "Place" )
                  {
                    for ( count : Int from 0 to entities.length() )
                      {
                        var localErrors := JSONArray() ;
                        var entity := ( loadEntity("Place", entities.getJSONObject(count).getString("id").parseUUID()) as Place ) ;
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
                              mapperEditedPlace(entity, entities.getJSONObject(count), localErrors);
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
                          var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Place", entities.getJSONObject(count).getString("id")) ;
                          if ( containsErrorInJSONArray(localErrors) && entity != null )
                          {
                            var entity := ( loadEntity("Place", entities.getJSONObject(count).getString("id").parseUUID()) as Place ) ;
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