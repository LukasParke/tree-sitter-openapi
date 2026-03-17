; OpenAPI YAML highlights (extends generic YAML with OpenAPI key awareness)

(boolean_scalar) @boolean
(null_scalar) @constant.builtin

[
  (double_quote_scalar)
  (single_quote_scalar)
  (block_scalar)
  (string_scalar)
] @string

[
  (integer_scalar)
  (float_scalar)
] @number

(comment) @comment

[
  (anchor_name)
  (alias_name)
] @label

(tag) @type

[
  (yaml_directive)
  (tag_directive)
  (reserved_directive)
] @attribute

; OpenAPI top-level and semantic keys
(block_mapping_pair
  key: (flow_node (plain_scalar (string_scalar) @keyword))
  (#any-of? @keyword
    "openapi" "info" "servers" "paths" "webhooks" "components"
    "security" "tags" "externalDocs" "jsonSchemaDialect"))

(block_mapping_pair
  key: (flow_node (plain_scalar (string_scalar) @property.definition))
  (#any-of? @property.definition "description" "summary" "title"))

(block_mapping_pair
  key: (flow_node (plain_scalar (string_scalar) @keyword))
  (#any-of? @keyword "get" "put" "post" "delete" "patch" "options" "head" "trace"))

(block_mapping_pair
  key: (flow_node (plain_scalar (string_scalar) @keyword))
  (#eq? @keyword "$ref"))

(block_mapping_pair
  key: (flow_node (plain_scalar (string_scalar) @property))
  (#match? @property "^x-"))

; Generic mapping keys (property)
(block_mapping_pair
  key: (flow_node
    [
      (double_quote_scalar)
      (single_quote_scalar)
    ] @property))

(block_mapping_pair
  key: (flow_node
    (plain_scalar
      (string_scalar) @property)))

(flow_mapping
  (_
    key: (flow_node
      [
        (double_quote_scalar)
        (single_quote_scalar)
      ] @property)))

(flow_mapping
  (_
    key: (flow_node
      (plain_scalar
        (string_scalar) @property))))

[
  ","
  "-"
  ":"
  ">"
  "?"
  "|"
] @punctuation.delimiter

[
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  "*"
  "&"
  "---"
  "..."
] @punctuation.special
