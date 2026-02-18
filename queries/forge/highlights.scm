[
  "sig" "pred" "fun" "fact" "assert" "inst" 
  "run" "check" "test" "example" "module" "open" 
  "all" "some" "lone" "one" "no" "sum" 
  "abstract" "extends" "var" 
] @keyword

[
  "and" "or" "not" "implies" "iff"
  "always" "eventually" "after" "once" "historically"
  "until" "releases" "since" "triggered" "next" "init"
] @keyword.operator

(sig_declaration (identifier) @type)
(field_declaration (identifier) @property)
(parameter (identifier) @variable.parameter)
(inst_declaration (identifier) @type)
(let_expr (identifier) @variable)

["&&" "||" "=>" "<=>" "!"] @operator
["." "->" "&" "+" "-" "~" "*" "^" "#"] @operator
["=" "!=" "<" ">" "<=" ">=" "in" "is"] @operator
["," ":" "|" "[" "]" "{" "}"] @punctuation.delimiter

(keyword_constant) @constant.builtin
(number) @number
(string) @string
(comment) @comment
(lang_header) @preproc

(identifier) @variable
