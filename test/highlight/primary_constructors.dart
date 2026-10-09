class const Point._(final int x, var int y) extends Base;
// <- keyword
//    ^ keyword
//          ^ type
//                ^ type
//                  ^ keyword
//                        ^ type.builtin
//                            ^ identifier.parameter
//                               ^ keyword
//                                          ^ keyword

class Delta(final int x, int delta) {
  this : assert(delta > 0);
  // <- variable.builtin
}

enum Color(final int value) {
  red(1);
}

extension type Id(int id) implements Object;
//                 ^ type.builtin

class MyClass {
  const new();
  //    ^ keyword
  new named();
  // <- keyword
  factory fact() => MyClass();
  // <- keyword
  factory() => MyClass();
  // <- keyword
}
