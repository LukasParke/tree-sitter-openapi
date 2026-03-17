.PHONY: generate test

generate:
	cd tree-sitter-openapi && tree-sitter generate
	cd tree-sitter-openapi-json && tree-sitter generate

test: generate
	cd tree-sitter-openapi && tree-sitter test
	cd tree-sitter-openapi-json && tree-sitter test
