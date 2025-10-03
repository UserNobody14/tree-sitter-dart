/// Native binding for tree-sitter-dart language grammar.
///
/// This module provides a `@Native` binding to the tree_sitter_dart()
/// function which returns the Dart language grammar for use with
/// tree-sitter parsers.
library;

import 'dart:ffi';

import '../tree_sitter.dart' show TSLanguage;

/// Get the tree-sitter Language for Dart grammar.
///
/// This function returns a pointer to the TSLanguage struct that defines
/// the Dart grammar. It uses Dart's `@Native` annotation for efficient
/// static linking to the native C function.
///
/// This is the preferred method for accessing the Dart language grammar
/// when using Dart 3.0+, as it provides better performance through
/// static linking compared to dynamic library loading.
///
/// Example:
/// ```dart
/// import 'package:tree_sitter/tree_sitter.dart';
///
/// void main() {
///   // Use the native binding with Parser.fromLanguage
///   final parser = Parser.fromLanguage(treeSitterDart());
///   final tree = parser.parse('class A {}');
///   print(tree.root.string);
/// }
/// ```
@Native<Pointer<TSLanguage> Function()>(
    symbol: 'tree_sitter_dart', isLeaf: true)
external Pointer<TSLanguage> treeSitterDart();
