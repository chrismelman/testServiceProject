module webservices/related-entities/Issue
extend entity Issue {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.project != null )
    {
      set.add(this.project);
    }
    return set;
  }
}