module webservices/related-entities/C
extend entity C {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    return set;
  }
}