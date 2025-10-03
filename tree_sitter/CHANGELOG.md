## 0.1.3 (Unreleased)
- Added `@Native` annotation support for the Dart language grammar
- Added `Parser.fromLanguage()` constructor for use with native bindings
- Added `treeSitterDart()` function for efficient static linking (Dart 3.0+)
- Updated examples and tests to demonstrate both dynamic and native binding approaches
- Configured ffigen to generate `@Native` annotations for tree-sitter C API bindings
- Updated api_config.yaml and parser_config.yaml to enable ffi-native code generation

## 0.1.2
- Fix issue with string encoding length

## 0.1.1
- Added some idiomatic dart apis

## 0.1.0
- Initial version.
