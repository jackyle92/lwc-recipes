public with sharing class Book {
    public Book() {

    }
    public String title;
    public List<Chapter> chapters = new List<Chapter>();
    public with sharing class Chapter {
        public String title;
        public Integer numberOfPages;
        private Chapter (String chapterTitle, Integer numPages) {
            this.title = chapterTitle;
            this.numberOfPages = numPages;
        }
    }

}