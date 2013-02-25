module webservices/related-entities/TestValidation
extend entity TestValidation {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    return set;
  }
}