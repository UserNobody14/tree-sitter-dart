/// Example usage of tree_sitter_dart native bindings
///
/// This example demonstrates how to use the Dart native bindings
/// to access the tree-sitter-dart grammar.

// ignore_for_file: avoid_print

import 'dart:ffi';
import 'package:tree_sitter_dart/tree_sitter_dart.dart';

void main() {
  print('Tree-sitter Dart Native Bindings Example');
  print('=========================================\n');
  
  // Get the language grammar pointer
  final Pointer<TSLanguage> language = treeSitterDart();
  
  print('Language: $languageName');
  print('Version: $languageVersion');
  print('Language pointer: $language');
  
  if (language != nullptr) {
    print('\n✓ Successfully loaded tree-sitter-dart grammar!');
    print('  The grammar is ready to be used with a tree-sitter parser.');
  } else {
    print('\n✗ Failed to load tree-sitter-dart grammar.');
  }
  
  print('\nNote: To parse Dart code, use this language pointer with');
  print('      the tree_sitter package\'s Parser class.');
  print('\nExample:');
  print('  final parser = Parser(');
  print('    sharedLibrary: "path/to/libdart.so",');
  print('    entryPoint: "tree_sitter_dart"');
  print('  );');
  print('  // Or use the language pointer directly if supported');
}
