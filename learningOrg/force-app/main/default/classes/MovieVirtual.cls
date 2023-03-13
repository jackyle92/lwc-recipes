public with sharing virtual class MovieVirtual {
  private String movieType = '';

  public MovieVirtual(String sMovieType) {
    this.movieType = sMovieType;
  }

  public List<Movie__c> selectMovies() {
    List<Movie__c> lstMovie = [
      SELECT Id, Name, (SELECT Id, Person__r.Name FROM Cast__r)
      FROM Movie__c
      WHERE Genre__c = :this.movieType
    ];
    if (lstMovie.size() > 0) {
        System.debug(lstMovie);
    }
    return lstMovie;
  }

  public virtual void insertMovie() {
    System.debug('insert Movie from ' + movieType);
  }

  public virtual void updateMovie() {
    System.debug('updateMovie from Movie virtual');
  }
}