/// Tree-sitter grammar for Dart language using Dart Native FFI.
///
/// This library provides native bindings to the tree-sitter-dart grammar
/// using Dart's @Native annotation for efficient static linking.
///
/// ## Usage
///
/// ```dart
/// import 'dart:ffi';
/// import 'package:tree_sitter_dart/tree_sitter_dart.dart';
///
/// void main() {
///   final language = treeSitterDart();
///   print('Loaded language: $languageName');
///   // Use language pointer with tree-sitter parser
/// }
/// ```
///
/// ## Features
///
/// - Native FFI bindings using `@Native` annotation (Dart 3.0+)
/// - Efficient static linking to the tree-sitter-dart C library
/// - Zero-overhead access to the tree-sitter grammar
///
/// ## Requirements
///
/// - Dart SDK 3.0 or later
/// - The tree-sitter-dart shared library must be compiled and linked
library tree_sitter_dart;

import 'dart:ffi';

/// Opaque type for TSLanguage pointer.
///
/// This represents a pointer to a TSLanguage struct from the tree-sitter
/// C library. The TSLanguage contains all the information about the grammar
/// rules, lexing, and parsing for the Dart language.
final class TSLanguage extends Opaque {}

/// Get the tree-sitter Language for Dart grammar.
///
/// This function returns a pointer to the TSLanguage struct that defines
/// the Dart grammar for use with tree-sitter parsers. The pointer is obtained
/// via Dart's `@Native` annotation, which provides efficient static linking
/// to the native C function.
///
/// The returned pointer can be used with tree-sitter parser APIs to parse
/// Dart source code and create syntax trees.
///
/// Returns:
///   A pointer to the TSLanguage struct for Dart.
///
/// Example:
/// ```dart
/// import 'dart:ffi';
/// import 'package:tree_sitter_dart/tree_sitter_dart.dart';
///
/// void main() {
///   final Pointer<TSLanguage> language = treeSitterDart();
///   
///   if (language != nullptr) {
///     print('Successfully loaded Dart grammar');
///     // Use with tree-sitter parser
///   }
/// }
/// ```
@Native<Pointer<TSLanguage> Function()>(symbol: 'tree_sitter_dart', isLeaf: true)
external Pointer<TSLanguage> treeSitterDart();

/// The name of the language.
///
/// This constant identifies the grammar as being for the Dart programming
/// language.
const String languageName = 'dart';

/// The version of the tree-sitter-dart grammar.
///
/// This should match the version in the main package's pubspec.yaml.
const String languageVersion = '0.1.2';

/// Path to the node-types.json file relative to the package root.
///
/// The node-types.json file contains metadata about all the node types
/// in the grammar, including their fields and whether they are named.
const String nodeTypesPath = '../../src/node-types.json';
