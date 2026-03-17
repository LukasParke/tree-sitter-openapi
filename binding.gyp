{
  "targets": [
    {
      "target_name": "tree_sitter_openapi_binding",
      "dependencies": [
        "<!(node -p \"require('node-addon-api').targets\"):node_addon_api_except"
      ],
      "include_dirs": [
        "tree-sitter-openapi/src",
        "tree-sitter-openapi-json/src"
      ],
      "sources": [
        "bindings/node/binding.cc",
        "tree-sitter-openapi/src/parser.c",
        "tree-sitter-openapi/src/scanner.c",
        "tree-sitter-openapi/src/schema.core.c",
        "tree-sitter-openapi-json/src/parser.c"
      ],
      "conditions": [
        ["OS!='win'", {
          "cflags_c": ["-std=c11"]
        }, {
          "cflags_c": ["/std:c11", "/utf-8"]
        }]
      ]
    }
  ]
}
