import 'dart:io';

import 'package:dylib/dylib.dart';
import 'package:test/test.dart';
import 'package:tree_sitter/tree_sitter.dart';

void main() {
  group('Parser with dynamic loading', () {
    test('parse with dynamic library loading', () {
      final parser = Parser(
          sharedLibrary: resolveDylibPath('dart', path: Directory.current.path),
          entryPoint: 'tree_sitter_dart');
      final program = "class A {}";
      final tree = parser.parse(program);
      print(tree.root.string);
      expect(tree.root.string, isNotEmpty);
    });
  });

  group('Parser with @Native annotation', () {
    test('parse with native language binding', () {
      // Use the @Native binding for efficient static linking
      final parser = Parser.fromLanguage(treeSitterDart());
      final program = "class A {}";
      final tree = parser.parse(program);
      print(tree.root.string);
      expect(tree.root.string, isNotEmpty);
    });
  });
}
