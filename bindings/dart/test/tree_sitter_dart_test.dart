import 'dart:ffi';
import 'package:test/test.dart';
import 'package:tree_sitter_dart/tree_sitter_dart.dart';

void main() {
  group('tree_sitter_dart native bindings', () {
    test('can load grammar', () {
      final language = treeSitterDart();
      expect(language, isNot(equals(nullptr)));
    });

    test('language name is correct', () {
      expect(languageName, equals('dart'));
    });

    test('language version is defined', () {
      expect(languageVersion, isNotEmpty);
    });

    test('treeSitterDart returns consistent pointer', () {
      final language1 = treeSitterDart();
      final language2 = treeSitterDart();
      
      // The function should return the same pointer consistently
      // (tree-sitter language pointers are typically static)
      expect(language1.address, equals(language2.address));
    });
  });
}
