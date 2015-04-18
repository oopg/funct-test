// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:functest/functest.dart' as functest;
import 'package:functest/movie.dart';
import 'package:functest/factory.dart';

main() {
  print('Hello world: ${functest.calculate()}!');

  List<Movie> movies = MovieFactory.fromConstructor();

  //printMovies(movies);

  List<Movie> movies2 = MovieFactory.writeJsonMovieString();
  //printMovies(movies2);
  
  printMoviesRatingFive(movies2);
  
}

printMovies(List<Movie> movies) {
  print(movies.map((movie) {
    return {"id": movie.id, "title": movie.title};
  }));
}

printMoviesRatingFive(List<Movie> movies) {
  printMoviesWithRating(movies.where((movie) {
    return movie.ratings == 5.0;
  }));
}

printMoviesWithRating(Iterable<Movie> movies) {
  print(movies.map((movie) {
     return {"id": movie.id, "title": movie.title, "ratings": movie.ratings};
   }));
}
