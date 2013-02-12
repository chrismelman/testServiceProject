module webservices/related-entities/Project
extend entity Project {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.issues != null )
    {
      set.addAll(this.issues);
    }
    return set;
  }
}