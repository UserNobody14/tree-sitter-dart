// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dylib/dylib.dart';
import 'package:tree_sitter/tree_sitter.dart';

void main() {
  print('=== Example 1: Using dynamic library loading (traditional) ===');
  exampleWithDynamicLoading();

  print('\n=== Example 2: Using @Native annotation (Dart 3.0+) ===');
  exampleWithNativeBinding();
}

void exampleWithDynamicLoading() {
  final parser = Parser(
      sharedLibrary: resolveDylibPath('dart', path: Directory.current.path),
      entryPoint: 'tree_sitter_dart');
  const program = r"""
void main() {
  test('', () {
    'åÅ';
    'åÅ';
  });
}
""";
  final tree = parser.parse(program);
  print(tree.root.string);
  print(parser.getText(tree.root.child(0).namedChild(0)));
}

void exampleWithNativeBinding() {
  // Use the @Native binding for efficient static linking (Dart 3.0+)
  final parser = Parser.fromLanguage(treeSitterDart());
  const program = r"""
class MyClass {
  void myMethod() {
    print('Hello from Dart!');
  }
}
""";
  final tree = parser.parse(program);
  print(tree.root.string);
  print('Root node type: ${tree.root.nodeType}');
}
