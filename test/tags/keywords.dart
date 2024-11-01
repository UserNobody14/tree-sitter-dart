library keyword.test;

import 'foo.dart' as test show A hide B;

export 'other.dart';

part 'other2.dart';

enum Bar { a, b }
//   ^ @definition.enum

typedef Test = Function();
//      ^ @definition.type

abstract class Foo extends Other3 implements Other2 {
  //            ^ @definition.class
  int _bar = 1;
  //
  int get bar => _bar;
  //       ^ @definition.method
  set bar(int value) => _bar = value;
  //   ^ @definition.method

  operator [](int index) => null;
}

class Other extends Foo {
  //   ^ @definition.class
  static int a = 1;
  final int b = 2;

  void foo(covariant String test) {}
  //    ^ @definition.method
  factory Other.something() => Other();
  //       ^ @definition.method

  Other() : super() {
    this.b;
  }
}

class Other2 {}
//    ^ @definition.class

class Other3 with Other4 {}
//     ^ @definition.class

mixin Other4 {}
//     ^ @definition.mixin

void main() {
  assert(1 == 1);
  const foo = 1;
  final bar = 2;
  var car = null;

  new Other();

  for (var i = 0; i < 10; i++) {
    continue;
  }

  for (var i in [1, 2, 3]) {}

  switch (true) {
    case true:
      break;
    default:
      break;
  }

  if (1 is int) {
  } else {}

  do {
    print('asdf');
  } while (1 == 2);

  try {
    throw Exception();
  } on Exception {
  } catch (e) {
    rethrow;
  } finally {}
}

void foo() async {
  // ^ @definition.function
  await other('');
}

Future<void> other(dynamic test) async {
  //          ^ @definition.function
  return;
}

extension Something on int {}
//             ^ @definition.extension

Iterable<int> bar() sync* {
  //           ^ @definition.function
  yield 1;
}

Stream<int> bar2() async* {
  //         ^ @definition.function
  yield 1;
}

// the following are keywords, that can also be used as identifiers
// verify that each is highlighted as an identifier
void identifierTest() {
  // ^ @definition.function
  var abstract = 1;
  var as = 1;
  var async = 1;
  var covariant = 1;
  var deferred = 1;
  var export = 1;
  var extension = 1;
  var external = 1;
  var factory = 1;
  var get = 1;
  var hide = 1;
  var implements = 1;
  var import = 1;
  var interface = 1;
  var library = 1;
  var mixin = 1;
  var on = 1;
  var operator = 1;
  var part = 1;
  var set = 1;
  var show = 1;
  var static = 1;
  var sync = 1;
  var typedef = 1;
}

