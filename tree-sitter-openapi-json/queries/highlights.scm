; OpenAPI JSON highlights

; OpenAPI top-level and semantic keys as keyword
(pair
  key: (string) @keyword
  (#any-of? @keyword
    "\"openapi\"" "\"info\"" "\"servers\"" "\"paths\"" "\"webhooks\"" "\"components\""
    "\"security\"" "\"tags\"" "\"externalDocs\"" "\"jsonSchemaDialect\""))

(pair
  key: (string) @keyword
  (#any-of? @keyword "\"get\"" "\"put\"" "\"post\"" "\"delete\"" "\"patch\"" "\"options\"" "\"head\"" "\"trace\""))

(pair
  key: (string) @keyword
  (#eq? @keyword "\"$ref\""))

(pair
  key: (string) @property.definition
  (#any-of? @property.definition "\"description\"" "\"summary\"" "\"title\""))

(pair
  key: (string) @property
  (#match? @property "\"x-"))

; Generic pair keys
(pair
  key: (_) @property)

(string) @string
(number) @number

[
  (null)
  (true)
  (false)
] @constant.builtin

(escape_sequence) @escape
(comment) @comment
