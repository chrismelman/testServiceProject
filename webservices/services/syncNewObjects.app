module webservices/services/syncNewObjects
service webservice_generated_syncNewObjects ( )
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
                var entity := Project{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                if ( entity != null )
                {
                  entity.save();
                }
                else
                {
                  errors.put("object has no id");
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
                  var entity := Issue{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                  if ( entity != null )
                  {
                    entity.save();
                  }
                  else
                  {
                    errors.put("object has no id");
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
                    var entity := ( null as Person ) ;
                    if ( json.has("typeField") && json.getString("typeField") != null )
                    {
                      var subtype := json.getString("typeField") ;
                      if ( subtype == "Person" )
                      {
                        var entity := Person{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                      }
                      else
                      {
                        if ( subtype == "User" )
                        {
                          var entity := User{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                        }
                        else
                        {
                        }
                      }
                    }
                    else
                    {
                      errors.put("object has no typefield");
                    }
                    if ( entity != null )
                    {
                      entity.save();
                    }
                    else
                    {
                      errors.put("object has no id");
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
                      var entity := Place{id := entities.getJSONObject(count).getString("id").parseUUID()} ;
                      if ( entity != null )
                      {
                        entity.save();
                      }
                      else
                      {
                        errors.put("object has no id");
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
                  mapperNewProject(entity, entities.getJSONObject(count), localErrors);
                  var exceptions := entity.validateSave() ;
                  addValidateExceptionsToErrors(exceptions, localErrors);
                }
                if ( localErrors.length() > 0 )
                {
                  var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Project", entities.getJSONObject(count).getString("id")) ;
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
                    mapperNewIssue(entity, entities.getJSONObject(count), localErrors);
                    var exceptions := entity.validateSave() ;
                    addValidateExceptionsToErrors(exceptions, localErrors);
                  }
                  if ( localErrors.length() > 0 )
                  {
                    var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Issue", entities.getJSONObject(count).getString("id")) ;
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
                      mapperNewPerson(entity, entities.getJSONObject(count), localErrors);
                      var exceptions := entity.validateSave() ;
                      addValidateExceptionsToErrors(exceptions, localErrors);
                    }
                    if ( localErrors.length() > 0 )
                    {
                      var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Person", entities.getJSONObject(count).getString("id")) ;
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
                        mapperNewPlace(entity, entities.getJSONObject(count), localErrors);
                        var exceptions := entity.validateSave() ;
                        addValidateExceptionsToErrors(exceptions, localErrors);
                      }
                      if ( localErrors.length() > 0 )
                      {
                        var jsonErrorObject := makeJSONEntityErrorObject(localErrors, "Place", entities.getJSONObject(count).getString("id")) ;
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