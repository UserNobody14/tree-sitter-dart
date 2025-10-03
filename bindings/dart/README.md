# tree-sitter-dart Dart Bindings

This package provides Dart bindings for the tree-sitter-dart grammar using Dart's Native FFI (`@Native` annotation).

## Features

- Native FFI bindings using `@Native` annotation (Dart 3.0+)
- Efficient static linking to the tree-sitter-dart C library
- Zero-overhead access to the tree-sitter grammar

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  tree_sitter_dart:
    path: path/to/bindings/dart
```

## Usage

```dart
import 'dart:ffi';
import 'package:tree_sitter_dart/tree_sitter_dart.dart';
import 'package:tree_sitter/tree_sitter.dart'; // Main tree-sitter library

void main() {
  // Get the Dart language grammar
  final language = treeSitterDart();
  
  // Use with tree-sitter parser (requires tree_sitter package)
  // Example usage with the tree_sitter package:
  // final parser = Parser(language: language);
  // final tree = parser.parse('class MyClass {}');
}
```

## Requirements

- Dart SDK 3.0 or later (for `@Native` annotation support)
- The tree-sitter-dart shared library must be compiled and available
- The shared library must be linked when building your Dart application

## Building

To use these bindings, you need to:

1. Build the tree-sitter-dart shared library:
   ```bash
   npm install
   npm run build
   ```

2. Link the shared library when compiling your Dart application using the `@Native` annotation's asset management or by specifying the library path at runtime.

## Compared to FFI Dynamic Loading

The traditional approach uses `DynamicLibrary.open()` to load shared libraries at runtime. This new approach uses `@Native` annotation which:

- Provides better performance through static linking
- Offers compile-time validation of native symbols
- Simplifies deployment by bundling native code with the Dart application
- Reduces runtime overhead of dynamic library loading

## License

Same as tree-sitter-dart (see repository LICENSE file)
