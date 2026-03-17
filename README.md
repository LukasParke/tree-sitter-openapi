# tree-sitter-openapi

OpenAPI grammar for [tree-sitter](https://tree-sitter.github.io/). Parses OpenAPI 3.0.x and 3.1.x documents in **YAML** and **JSON**, with **Markdown** injection into `description` fields.

## Features

- **YAML** – Full YAML OpenAPI specs (block/flow, scalars, anchors, etc.)
- **JSON** – JSON OpenAPI specs
- **Markdown in descriptions** – `description` values are injected with tree-sitter-markdown for highlighting in editors that support language injection (Neovim, Helix, Zed)

## Grammars

This package ships two grammars:

| Grammar       | Scope              | File types | Use case           |
|---------------|--------------------|------------|--------------------|
| `openapi`     | `source.openapi`   | yaml, yml  | YAML OpenAPI docs  |
| `openapi_json`| `source.openapi.json` | json   | JSON OpenAPI docs  |

## Installation

### Node

```bash
npm install tree-sitter-openapi
```

### Neovim (nvim-treesitter)

Add to your parser config:

```lua
openapi = { install_info = { url = "https://github.com/.../tree-sitter-openapi", files = { "src/parser.c", "src/scanner.c" } } }
```

(Adjust `url` and grammar paths for the openapi and openapi_json grammars as required by nvim-treesitter’s multi-grammar support.)

## Build

- Build both grammars: `npm run build` (runs `tree-sitter generate` in each grammar directory)
- Install native addon: `npm install`
- Run tests: `npm test`
- Playground: `npm start`

## License

MIT. The YAML grammar is adapted from [tree-sitter-yaml](https://github.com/tree-sitter-grammars/tree-sitter-yaml) (MIT). The JSON grammar is adapted from [tree-sitter-json](https://github.com/tree-sitter/tree-sitter-json) (MIT).
