module webservices/related-entities/B
extend entity B {
  function getRelatedEntities ( ) : Set<Entity>
  {
    var set := Set<Entity>() ;
    if ( this.test9 != null )
    {
      set.add(this.test9);
    }
    if ( this.test8 != null )
    {
      set.add(this.test8);
    }
    if ( this.test6 != null )
    {
      set.addAll(this.test6);
    }
    if ( this.test3 != null )
    {
      set.addAll(this.test3);
    }
    if ( this.test2 != null )
    {
      set.addAll(this.test2);
    }
    if ( this.test1 != null )
    {
      set.addAll(this.test1);
    }
    return set;
  }
}