module webservices/related-entities/User
extend entity User {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.place != null )
    {
      set.add(this.place);
    }
    return set;
  }
}