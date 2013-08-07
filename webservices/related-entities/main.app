module webservices/related-entities/main
imports webservices/related-entities/Issue
imports webservices/related-entities/Person
imports webservices/related-entities/Place
imports webservices/related-entities/Project
imports webservices/related-entities/TestValidation
imports webservices/related-entities/User
function getSetWhereNotSeen ( set : Set<Entity> , seen : Set<UUID> , add : Set<Entity> ) : Set<Entity>
{
  var newset := Set<Entity>() ;
  for ( ent : Entity in add )
    {
      var inSeen := ent.id in seen ;
      if ( ! inSeen )
      {
        newset.add(ent);
        seen.add(ent.id);
      }
    }
  return newset;
}
function isTopLevelEntity ( ent : Entity ) : Bool
{
  return isTopLevelEntity(ent.getTypeString());
}
function isTopLevelEntity ( str : String ) : Bool
{
  var toplevelEntities := {"Project", "User", "TestValidation"} ;
  return str in toplevelEntities;
}
function getRelatedEntities ( ent : Entity ) : Set<Entity>
{
  var type := ent.getTypeString() ;
  if ( type == "Project" )
  {
    return ( ent as Project ).getRelatedEntities();
  }
  if ( type == "Issue" )
  {
    return ( ent as Issue ).getRelatedEntities();
  }
  if ( type == "User" )
  {
    return ( ent as User ).getRelatedEntities();
  }
  if ( type == "TestValidation" )
  {
    return ( ent as TestValidation ).getRelatedEntities();
  }
  if ( type == "Person" )
  {
    return ( ent as Person ).getRelatedEntities();
  }
  if ( type == "Place" )
  {
    return ( ent as Place ).getRelatedEntities();
  }
  return Set<Entity>();
}
function getAllProjectForTopEntity ( tl : Entity ) : Set<Project>
{
  if ( tl.getTypeString() == "Project" )
  {
    return {( tl as Project )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Project>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Project" )
            {
              found.add(( ent as Project ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllIssueForTopEntity ( tl : Entity ) : Set<Issue>
{
  if ( tl.getTypeString() == "Issue" )
  {
    return {( tl as Issue )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Issue>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Issue" )
            {
              found.add(( ent as Issue ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllUserForTopEntity ( tl : Entity ) : Set<User>
{
  if ( tl.getTypeString() == "User" )
  {
    return {( tl as User )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<User>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "User" )
            {
              found.add(( ent as User ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllTestValidationForTopEntity ( tl : Entity ) : Set<TestValidation>
{
  if ( tl.getTypeString() == "TestValidation" )
  {
    return {( tl as TestValidation )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<TestValidation>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "TestValidation" )
            {
              found.add(( ent as TestValidation ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllPersonForTopEntity ( tl : Entity ) : Set<Person>
{
  if ( tl.getTypeString() == "Person" )
  {
    return {( tl as Person )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Person>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Person" )
            {
              found.add(( ent as Person ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}
function getAllPlaceForTopEntity ( tl : Entity ) : Set<Place>
{
  if ( tl.getTypeString() == "Place" )
  {
    return {( tl as Place )};
  }
  var todo := Set<Entity>() ;
  var seen := Set<UUID>() ;
  var found := Set<Place>() ;
  todo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(tl)));
  while ( todo.length > 0 )
    {
      var newTodo := Set<Entity>() ;
      for ( ent : Entity in todo where ent != null )
        {
          if ( ! isTopLevelEntity(ent) )
          {
            if ( ent.getTypeString() == "Place" )
            {
              found.add(( ent as Place ));
            }
            newTodo.addAll(getSetWhereNotSeen(todo, seen, getRelatedEntities(ent)));
          }
        }
      todo := newTodo;
    }
  return found;
}