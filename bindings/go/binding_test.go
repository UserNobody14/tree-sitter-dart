package tree_sitter_dart_test

import (
	"testing"

	tree_sitter "github.com/smacker/go-tree-sitter"
	"github.com/tree-sitter/tree-sitter-dart"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_dart.Language())
	if language == nil {
		t.Errorf("Error loading Dart grammar")
	}
}
