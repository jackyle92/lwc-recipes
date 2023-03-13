public with sharing class Comedy extends Movie {
  public Comedy() {
    super('Comedy');
  }

  public override void insertMovie() {
    Movie__c newComedy = new Movie__c(Name = 'Comedy');
    try {
      insert newComedy;
    } catch (DmlException ex) {
      System.debug(ex.getMessage());
    }
  }

  public List<Movie__c> getComedyMovies() {
    return this.selectMovies();
  }
}