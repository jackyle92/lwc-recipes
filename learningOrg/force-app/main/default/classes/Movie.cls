public with sharing abstract class Movie {
  private Id movieId = null;
  public String movieType = '';
  public Movie(String sMovieType) {
    this.movieType = sMovieType;
  }

  public List<Movie__c> selectMovies() {
    List<Movie__c> lstMovies = [
      SELECT Id, Name, (SELECT Id, Person__r.Name FROM Cast__r)
      FROM Movie__c
      WHERE Genre__c = :this.movieType
    ];
    return lstMovies;
  }

  public abstract void insertMovie();
}