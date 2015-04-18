library functest.movie;

class Movie {
   int id;
   String title;
   String boxart;
   String uri;
   double ratings;
   Bookmark bookmark;
   
   Movie(this.id, this.title, this.boxart, this.uri, this.ratings, this.bookmark);
   
}

class Bookmark {
  int id;
  int time;
  
  Bookmark(this.id, this.time);
}

