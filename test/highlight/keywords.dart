library keyword.test;
// ^ keyword

import 'foo.dart'
// ^ keyword
    as test
    // <- keyword
    show A
    // <- keyword
    hide B;
    // <- keyword

export 'other.dart';
// <- keyword

part 'other2.dart';
// <- keyword

enum Bar { a, b }
// <- keyword

typedef Test = Function();
// <- keyword
//              ^ type

abstract class Foo extends Other3 implements Other2 {
// <- keyword
//        ^ keyword
//                   ^ keyword
//                                  ^ keyword
  int _bar = 1;
  int get bar => _bar;
  //   ^ keyword
  set bar(int value) => _bar = value;
  // <- keyword

  operator [](int index) => null;
  // <- keyword
}

class Other extends Foo {
  static int a = 1;
  // <- keyword
  final int b = 2;

  void foo(covariant String test) {}
  // <- type
  //         ^ keyword
  factory Other.something() => Other();
  // <- keyword

  Other() : super() {
    //       ^ keyword
    this.b;
    //  <- variable.builtin
  }
}

class Other2 {}

class Other3 with Other4 {}
//            ^ keyword

mixin Other4 {}
// <- keyword

void main() {
  assert(1 == 1);
  // <- keyword
  const foo = 1;
  // <- keyword
  final bar = 2;
  // <- keyword
  var car = null;
  // <- keyword

  new Other();
  // <- keyword

  for (var i = 0; i < 10; i++) {
  // <- keyword
    continue;
    // <- keyword
  }

  for (var i in [1, 2, 3]) {}
  //         ^ keyword

  switch (true) {
    // <- keyword
    case true:
      // <- keyword
      break;
    // ^ keyword
    default:
      // <- keyword
      break;
  }

  if (1 is int) {
    //  ^ keyword
  } else {}

  do {
  // <- keyword
    print('asdf');
  } while (1 == 2);

  try {
  // <- keyword
    throw Exception();
    // <- keyword
  } on Exception {
    // <- keyword
  } catch (e) {
    // <- keyword
    rethrow;
    // <- keyword
  } finally {}
  // ^ keyword
}

void foo() async {
// <- type
  //        ^ keyword
  await other('');
  // <- keyword
}

Future<void> other(dynamic test) async {
  //                              ^ keyword
  return;
  // <- keyword
}

extension Something on int {}
// <- keyword
//                  ^ keyword

Iterable<int> bar() sync* {
  //                 ^ keyword
  yield 1;
  // <- keyword
}

Stream<int> bar2() async* {
  //                 ^ keyword
  yield 1;
  // <- keyword
}
