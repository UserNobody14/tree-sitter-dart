import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  ^ @definition.class
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<void> hello() async {
  //          ^ @definition.function
}

Stream<String> helloStream() async* {
  //                  ^ @definition.function
}
Iterable<String> helloIter() sync* {
  //              ^ @definition.function
}
