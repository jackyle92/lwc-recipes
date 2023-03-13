public with sharing class FamilyMovie extends MovieVirtual {
  public FamilyMovie() {
    // the same initiation of the parent class as for the abstract class
    super('Family');
  }
  public override void insertMovie() {
    System.debug('insert Movie from FamilyMovie');
  }

  public List<Movie__c> getFamilyMovies() {
    return this.selectMovies();
  }
}