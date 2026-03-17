const path = require("path");
const root = path.join(__dirname, "..", "..");

const binding = require("node-gyp-build")(root);

try {
  binding.nodeTypeInfo = require("../../tree-sitter-openapi/src/node-types.json");
} catch (_) {}

try {
  binding.openapi_json.nodeTypeInfo = require("../../tree-sitter-openapi-json/src/node-types.json");
} catch (_) {}

module.exports = binding;
