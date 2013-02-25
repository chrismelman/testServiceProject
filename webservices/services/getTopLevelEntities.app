module webservices/services/getTopLevelEntities
service webservice_generated_getTopLevelEntities ( )
{
  var json := JSONObject() ;
  var errors := JSONArray() ;
  var result := JSONArray() ;
  var array := JSONArray() ;
  var jsonobj := JSONObject() ;
  for ( topent : Project in Project.all() )
    {
      array.put(topent.toSimpleJSON());
    }
  jsonobj.put("name", "Project");
  jsonobj.put("value", array);
  result.put(jsonobj);
  var array := JSONArray() ;
  var jsonobj := JSONObject() ;
  for ( topent : User in User.all() )
    {
      array.put(topent.toSimpleJSON());
    }
  jsonobj.put("name", "User");
  jsonobj.put("value", array);
  result.put(jsonobj);
  var array := JSONArray() ;
  var jsonobj := JSONObject() ;
  for ( topent : TestValidation in TestValidation.all() )
    {
      array.put(topent.toSimpleJSON());
    }
  jsonobj.put("name", "TestValidation");
  jsonobj.put("value", array);
  result.put(jsonobj);
  json.put("errors", errors);
  json.put("result", result);
  return json;
}