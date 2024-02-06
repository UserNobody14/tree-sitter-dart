import 'dart:io';

import 'package:dylib/dylib.dart';
import 'package:tree_sitter/tree_sitter.dart';

void main() {
  final parser = Parser(
      sharedLibrary: resolveDylibPath('dart', path: Directory.current.path),
      entryPoint: 'tree_sitter_dart');
  // const program = "class A {}";
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
