// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The functest library.
library functest;

int calculate() {
  return 6 * 7;
}
/****************************************************************/

//http://jhusain.github.io/learnrx/s
test1() {
  List<String> names = ["Ben", "Jafar", "Matt", "Priya", "Brian"];
  int counter;

  for(counter = 0; counter < names.length; counter++) {
    print(names[counter]);
  }
}
/***************************************************************/
test1ForEach() {
  print("Inside test1ForEach()");
  List<String> names = ["Ben", "Jafar", "Matt", "Priya", "Brian"];
  names.forEach(printName);
}

printName(String name) {
  print(name);
}
/***************************************************************/