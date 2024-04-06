class SomeClass {
  final str = '';
  int get getter => 12;
  void set setter(int value) {}
  void method() => print('asdf');
}

String topLevelFn() => 'str';

extension SomeExtension on SomeClass {
  void extensionMethod() => print('extension');
  }

void main() {
  final instance = SomeClass();
  instance.str;
  instance.getter;
  instance.setter = 12;
  instance.method();
  topLevelFn();
  instance.extensionMethod();
  instance
    ..method()
    ..str
    ..getter;
}