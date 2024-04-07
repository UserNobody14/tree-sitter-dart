(dotted_identifier_list) @string

; Methods
; --------------------
(super) @function

(function_expression_body
  (identifier) @function)

; NOTE: This query is a bit of a work around for the fact that the dart grammar doesn't
; specifically identify a node as a function call
(((identifier) @function (#match? @function "^_?[a-z]"))
 . (selector . (argument_part))) @function

; Annotations
; --------------------
(annotation
  name: (identifier) @attribute)

; Operators and Tokens
; --------------------
(template_substitution
  "$" @punctuation.special
  "{" @punctuation.special
  "}" @punctuation.special
) @none

(template_substitution
  "$" @punctuation.special
  (identifier_dollar_escaped) @variable
) @none

(escape_sequence) @string.escape

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
]  @punctuation.bracket

(type_arguments
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

(type_parameters
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

[
 "@"
 "=>"
 ".."
 "??"
 "=="
 "?"
 ":"
 "&&"
 "%"
 "<"
 ">"
 "="
 ">="
 "<="
 "||"
 (increment_operator)
 (is_operator)
 (prefix_operator)
 (equality_operator)
 (additive_operator)
] @operator

; Delimiters
; --------------------
[
  ";"
  "."
  ","
] @punctuation.delimiter

; Types
; --------------------
(class_definition
  name: (identifier) @type)
(constructor_signature
  name: (identifier) @type)
;; TODO: does not work
;(type_identifier
  ;(identifier) @type)
(scoped_identifier
  scope: (identifier) @type)
(function_signature
  name: (identifier) @function)
(getter_signature
  (identifier) @function)
(setter_signature
  name: (identifier) @function)
(type_identifier) @type

((scoped_identifier
  scope: (identifier) @type
  name: (identifier) @type)
 (#match? @type "^[a-zA-Z]"))

(type_identifier) @type

; Enums
; -------------------
(enum_declaration
  name: (identifier) @type)
(enum_constant
  name: (identifier) @identifier.constant)

; Variables
; --------------------
; var keyword
(inferred_type) @keyword

((identifier) @type
 (#match? @type "^_?[A-Z].*[a-z]"))

("Function" @type)

(this) @variable.builtin

; properties
(expression_statement
  (selector
  	(unconditional_assignable_selector
    	(identifier) @function))
  (selector (argument_part (arguments)))
)
(expression_statement
  (cascade_section
  	(cascade_selector (identifier) @function)
    (argument_part (arguments))
  )
)

(unconditional_assignable_selector
  (identifier) @property)

(conditional_assignable_selector
  (identifier) @property)

(cascade_section
  (cascade_selector
    (identifier) @property))

; assignments
(assignment_expression
  left: (assignable_expression) @variable)

(this) @variable.builtin

; Parameters
; --------------------
(formal_parameter
    name: (identifier) @parameter)

(named_argument
  (label (identifier) @parameter))

; Literals
; --------------------
[
    (hex_integer_literal)
    (decimal_integer_literal)
    (decimal_floating_point_literal)
    ; TODO: inaccessbile nodes
    ; (octal_integer_literal)
    ; (hex_floating_point_literal)
] @number

(symbol_literal) @symbol
(string_literal) @string
(true) @boolean
(false) @boolean
(null_literal) @constant.builtin

(documentation_comment) @comment
(comment) @comment

; Keywords
; --------------------
[
    (assert_builtin)
    (break_statement)
    (const_builtin)
    (part_of_builtin)
    (rethrow_builtin)
    (void_type)
    "abstract"
    "as"
    "async"
    "async*"
    "await"
    "base"
    "case"
    "catch"
    "class"
    "continue"
    "covariant"
    "default"
    "deferred"
    "do"
    "dynamic"
    "else"
    "enum"
    "export"
    "extends"
    "extension"
    "external"
    "factory"
    "false"
    "final"
    "finally"
    "for"
    "Function"
    "get"
    "hide"
    "if"
    "implements"
    "import"
    "in"
    "interface"
    "is"
    "late"
    "library"
    "mixin"
    "new"
    "null"
    "on"
    "operator"
    "part"
    "required"
    "return"
    "sealed"
    "set"
    "show"
    "static"
    "super"
    "switch"
    "sync*"
    "throw"
    "true"
    "try"
    "typedef"
    "var"
    "when"
    "while"
    "with"
    "yield"
] @keyword

; Variable
(identifier) @variable

; Error
(ERROR) @error