module webservices/services/interface
imports webservices/services/getTimeStamp
imports webservices/services/getTopLevelEntities
imports webservices/services/syncA
imports webservices/services/syncB
imports webservices/services/syncC
imports webservices/services/syncDirtyObjects
imports webservices/services/syncNewObjects
imports webservices/services/test
imports webservices/related-entities/main
imports webservices/access-control/main
imports webservices/mappers/main
imports webservices/json/main
native class DispatchServletHelper as DispatchServletHelper : DispatchServlet
{
getResponse ( ) : HttpServletResponse
  forwardRequest ( String )
  static get ( ) : DispatchServlet
}
function getDispatchServletHelper ( ) : DispatchServletHelper
{
  var servlet := DispatchServletHelper.get() ;
  if ( servlet is a DispatchServletHelper )
  {
    return ( servlet as DispatchServletHelper );
  }
  else
  {
    return null;
  }
}
function getAvailableServices ( ) : Set<String>
{
  return {"syncNewObjects", "syncDirtyObjects", "syncC", "syncB", "syncA", "getTimeStamp", "test", "getTopLevelEntities"};
}
service webservice ( service : String )
{
  if ( service in getAvailableServices() )
  {
    getDispatchServletHelper().forwardRequest("/webservice_generated_" + service + "/");
  }
  else
  {
    var json := JSONObject() ;
    var errors := JSONArray() ;
    errors.put("service " + service + " does not exist");
    json.put("errors", errors);
    return json;
  }
}
function addDirtyFalse ( json : JSONObject ) : JSONObject
{
  json.put("dirty", "false");
  return json;
}
function makeJSONErrorObject ( message : String , type : String ) : JSONObject
{
  var json := JSONObject() ;
  json.put("message", message);
  json.put("type", type);
  return json;
}
function makeJSONEntityErrorObject ( errors : JSONArray , ent : String , id : String ) : JSONObject
{
  var json := JSONObject() ;
  json.put("errors", errors);
  json.put("ent", ent);
  json.put("id", id);
  return json;
}
function addValidationExceptionsToLocalErrors ( errors : List<NativeValidationException> , localErrors : JSONArray ) : Void
{
  for ( ex : NativeValidationException in errors )
    {
      localErrors.put(makeJSONErrorObject(ex.getErrorMessage(), "error"));
    }
}
function addValidateExceptionsToErrors ( exceptions : ValidationExceptionMultiple , errors : JSONArray ) : Void
{
  for ( ex : ValidationException in exceptions.exceptions )
    {
      errors.put(makeJSONErrorObject(ex.message, "error"));
    }
}
function containsErrorInJSONArray ( array : JSONArray ) : Bool
{
  for ( count : Int from 0 to array.length() )
    {
      if ( array.getJSONObject(count).getString("type") == "error" )
      {
        return true;
      }
    }
  return false;
}