;;;;;;;;;; Reference treesitter python
;(module (expression_statement (assignment left: (identifier) @name) @definition.constant))
;
;(class_definition
;  name: (identifier) @name) @definition.class
;
;(function_definition
;  name: (identifier) @name) @definition.function
;
;(call
;  function: [
;      (identifier) @name
;      (attribute
;        attribute: (identifier) @name)
;  ]) @reference.call

(class_definition
  name: (identifier) @name) @definition.class

(method_signature
  (function_signature)) @definition.method

(type_alias
  (type_identifier) @name) @definition.type

(method_signature
(getter_signature
  name: (identifier) @name)) @definition.method

(method_signature
(setter_signature
  name: (identifier) @name)) @definition.method 

(method_signature
  (function_signature
  name: (identifier) @name)) @definition.method

(method_signature
  (factory_constructor_signature
    (identifier) @name)) @definition.method

(method_signature
  (constructor_signature
  name: (identifier) @name)) @definition.method

(method_signature
  (operator_signature)) @definition.method

(method_signature) @definition.method

(mixin_declaration
  (mixin)
  (identifier) @name) @definition.mixin

(extension_declaration
  name: (identifier) @name) @definition.extension


(new_expression
  (type_identifier) @name) @reference.class

;(scoped_identifier
;  scope: (identifier) @type
;  name: (identifier) @type)
;  (#match? @type "^[a-zA-Z]") 
;@definition.type
;@property

;(call 
;  function: [
;	(identifier) @name
;	(attribute
;	  attribute: (identifier) @name)
;  ]) @reference.call



;;;;;;;;;;;;;;;;; Reference treesitter elixir
;; Definitions
;
;; * modules and protocols
;(call
;  target: (identifier) @ignore
;  (arguments (alias) @name)
;  (#match? @ignore "^(defmodule|defprotocol)$")) @definition.module
;
;; * functions/macros
;(call
;  target: (identifier) @ignore
;  (arguments
;    [
;      ; zero-arity functions with no parentheses
;      (identifier) @name
;      ; regular function clause
;      (call target: (identifier) @name)
;      ; function clause with a guard clause
;      (binary_operator
;        left: (call target: (identifier) @name)
;        operator: "when")
;    ])
;  (#match? @ignore "^(def|defp|defdelegate|defguard|defguardp|defmacro|defmacrop|defn|defnp)$")) @definition.function
;
;; References
;
;; ignore calls to kernel/special-forms keywords
;(call
;  target: (identifier) @ignore
;  (#match? @ignore "^(def|defp|defdelegate|defguard|defguardp|defmacro|defmacrop|defn|defnp|defmodule|defprotocol|defimpl|defstruct|defexception|defoverridable|alias|case|cond|else|for|if|import|quote|raise|receive|require|reraise|super|throw|try|unless|unquote|unquote_splicing|use|with)$"))
;
;; ignore module attributes
;(unary_operator
;  operator: "@"
;  operand: (call
;    target: (identifier) @ignore))
;
;; * function call
;(call
;  target: [
;   ; local
;   (identifier) @name
;   ; remote
;   (dot
;     right: (identifier) @name)
;  ]) @reference.call
;
;; * pipe into function call
;(binary_operator
;  operator: "|>"
;  right: (identifier) @name) @reference.call
;
;; * modules
;(alias) @name @reference.module

(enum_declaration
  name: (identifier) @name) @definition.enum

(function_signature
  name: (identifier) @name) @definition.function 

