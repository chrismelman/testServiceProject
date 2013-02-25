module webservices/json/main
imports webservices/json/Issue
imports webservices/json/Person
imports webservices/json/Place
imports webservices/json/Project
imports webservices/json/TestValidation
imports webservices/json/User
function makeJSONObjectFromEntityRef ( ent : Entity ) : JSONObject
{
  var json := JSONObject() ;
  json.put("id", ent.id);
  return json;
}