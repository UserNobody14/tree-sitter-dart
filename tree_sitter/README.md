# Tree Sitter Dart Library

This library provides Dart bindings for the [Tree Sitter](http://tree-sitter.github.io/tree-sitter/) c parsing library. It allows parsing source code into a syntax tree that you can traverse and query.

## Installation

You must have the tree sitter library available as a dynamic library on your system.

Then set the library location using:
```dart
TreeSitterConfig.setLibraryPath('/path/to/libtree-sitter.so');
```

## Usage

### Option 1: Native Binding (Recommended for Dart 3.0+)

Use the `@Native` annotation binding for efficient static linking:

```dart
import 'package:tree_sitter/tree_sitter.dart';

void main() {
  // Use the native binding for the Dart language grammar
  final parser = Parser.fromLanguage(treeSitterDart());
  final program = "class A {}";
  final tree = parser.parse(program);
  print(tree.root.string);
}
```

This approach provides:
- Better performance through static linking
- Compile-time symbol validation
- Zero runtime overhead for library loading
- Simplified deployment

### Option 2: Dynamic Library Loading (Traditional)

Load the language grammar dynamically at runtime:

```dart
import 'package:dylib/dylib.dart';
import 'package:tree_sitter/tree_sitter.dart';

void main() {
  final parser = Parser(
      sharedLibrary: resolveDylibPath('dart', path: Directory.current.path),
      entryPoint: 'tree_sitter_dart');
  final program = "class A {}";
  final tree = parser.parse(program);
  print(tree.root.string);
}
```

## Regenerating Bindings

The tree-sitter C API bindings are configured to use `@Native` annotations for better performance (Dart 3.0+). To regenerate the bindings after updating the tree-sitter library:

```bash
# Make sure the tree-sitter submodule is initialized
git submodule update --init --recursive

# Build tree-sitter library
cd tree-sitter && make && cd ..

# Regenerate bindings
dart run ffigen --config api_config.yaml
dart run ffigen --config parser_config.yaml
```

This will generate updated bindings in `lib/src/generated_bindings.dart` and `lib/src/parser_generated_bindings.dart` with `@Native` annotations enabled.

**Note:** The generated bindings use `@Native` without asset IDs, which means they rely on `DynamicLibrary.process()` for symbol resolution. You'll need to preload the libraries when running tests:

```bash
export LD_PRELOAD="./libtree-sitter.so:./libdart.so"
dart test
```

## Advanced Usage

You can access other APIs via the top level `treeSitterApi` ffi wrapper.

Or you can help contribute to an idiomatic dart api on top of the ffi wrapper.
Many of the apis are started but not complete.

Expect breaking changes while we figure out the best api