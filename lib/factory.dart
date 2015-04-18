library functest.factory;

import 'package:functest/movie.dart';
import 'dart:convert';

class MovieFactory {
  static List<Movie> _moviesConst = new List<Movie>();
  static List<Movie> _moviesJson = new List<Movie>();

  static fromConstructor() {
    Movie m1 = new Movie(70111470, "Die Hard",
        "http://cdn-0.nflximg.com/images/2891/DieHard.jpg",
        "http://api.netflix.com/catalog/titles/movies/70111470", 4.0,
        new Bookmark(0, 0));
    Movie m2 = new Movie(654356453, "Bad Boys",
        "http://cdn-0.nflximg.com/images/2891/BadBoys.jpg",
        "http://api.netflix.com/catalog/titles/movies/70111470", 5.0,
        new Bookmark(432534, 65876586));
    Movie m3 = new Movie(65432445, "The Chamber",
        "http://cdn-0.nflximg.com/images/2891/TheChamber.jpg",
        "http://api.netflix.com/catalog/titles/movies/70111470", 4.0,
        new Bookmark(0, 0));
    Movie m4 = new Movie(675465, "Fracture",
        "http://cdn-0.nflximg.com/images/2891/Fracture.jpg",
        "http://api.netflix.com/catalog/titles/movies/70111470", 5.0,
        new Bookmark(432534, 65876586));

    _moviesConst.add(m1);
    _moviesConst.add(m2);
    _moviesConst.add(m3);
    _moviesConst.add(m4);

    return _moviesConst;
  }

  static writeJsonString() {
    var mapData = new Map();
    mapData["language"] = "dart";
    mapData["targets"] = new List();
    mapData["targets"].add("dartium");
    mapData["targets"].add("javascript");
    mapData["website"] = new Map();
    mapData["website"]["homepage"] = "www.dartlang.org";
    mapData["website"]["api"] = "api.dartlang.org";

    String jsonData = JSON.encode(mapData);
    print(jsonData);
  }

  static List<Movie> writeJsonMovieString() {
    List movies = new List();

    var mapData1 = new Map();
    mapData1["id"] = 70111470;
    mapData1["title"] = "Die Hard";
    mapData1["boxart"] = "http://cdn-0.nflximg.com/images/2891/DieHard.jpg";
    mapData1["uri"] = "http://api.netflix.com/catalog/titles/movies/70111470";
    mapData1["ratings"] = 4.0;
    mapData1["bookmark"] = new Map();
    mapData1["bookmark"]["id"] = 0;
    mapData1["bookmark"]["time"] = 0;

    var mapData2 = new Map();
    mapData2["id"] = 654356453;
    mapData2["title"] = "Bad Boys";
    mapData2["boxart"] = "http://cdn-0.nflximg.com/images/2891/BadBoys.jpg";
    mapData2["uri"] = "http://api.netflix.com/catalog/titles/movies/70111470";
    mapData2["ratings"] = 5.0;
    mapData2["bookmark"] = new Map();
    mapData2["bookmark"]["id"] = 432534;
    mapData2["bookmark"]["time"] = 65876586;

    var mapData3 = new Map();
    mapData3["id"] = 65432445;
    mapData3["title"] = "The Chamber";
    mapData3["boxart"] = "http://cdn-0.nflximg.com/images/2891/TheChamber.jpg";
    mapData3["uri"] = "http://api.netflix.com/catalog/titles/movies/70111470";
    mapData3["ratings"] = 4.0;
    mapData3["bookmark"] = new Map();
    mapData3["bookmark"]["id"] = 0;
    mapData3["bookmark"]["time"] = 0;

    var mapData4 = new Map();
    mapData4["id"] = 675465;
    mapData4["title"] = "Fracture";
    mapData4["boxart"] = "http://cdn-0.nflximg.com/images/2891/Fracture.jpg";
    mapData4["uri"] = "http://api.netflix.com/catalog/titles/movies/70111470";
    mapData4["ratings"] = 5.0;
    mapData4["bookmark"] = new Map();
    mapData4["bookmark"]["id"] = 432534;
    mapData4["bookmark"]["time"] = 65876586;

    movies.add(mapData1);
    movies.add(mapData2);
    movies.add(mapData3);
    movies.add(mapData4);

    String jsonData = JSON.encode(movies);
    print(jsonData);
    return createObjectFromJson(jsonData);
  }

  static List<Movie> createObjectFromJson(String jsonString) {
    List movies = JSON.decode(jsonString);
    List<Movie> movieList = new List<Movie>();
    movies.forEach((movie) {
      /*
      print(movie["id"]);
      print(movie["title"]);
      print(movie["boxart"]);
      print(movie["uri"]);
      print(movie["ratings"]);
      print(movie["bookmark"]["id"]);
      print(movie["bookmark"]["time"]);
      */

      Movie obj = new Movie(movie["id"], movie["title"], movie["boxart"],
          movie["uri"], movie["ratings"],
          new Bookmark(movie["bookmark"]["id"], movie["bookmark"]["time"]));
      movieList.add(obj);
    });

    //print(movieList);
    return movieList;
  }
}
