module webservices/related-entities/A
extend entity A {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    return set;
  }
}