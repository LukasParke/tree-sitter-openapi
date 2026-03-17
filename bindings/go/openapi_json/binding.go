package tree_sitter_openapi_json

// #cgo CFLAGS: -std=c11 -fPIC
// #include "../../../tree-sitter-openapi-json/src/parser.c"
import "C"

import "unsafe"

// Language returns the tree-sitter Language for OpenAPI JSON.
func Language() unsafe.Pointer {
	return unsafe.Pointer(C.tree_sitter_openapi_json())
}
