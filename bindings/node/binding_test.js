const assert = require("node:assert");
const { test } = require("node:test");

test("binding exports openapi (YAML) language", () => {
  const binding = require(".");
  assert.ok(binding, "binding loads");
  assert.ok(binding.name === "openapi", "binding.name is openapi");
  assert.ok(binding.language, "binding.language (YAML parser) is set");
});

test("binding exports openapi_json language", () => {
  const binding = require(".");
  assert.ok(binding.openapi_json, "binding.openapi_json is set");
  assert.ok(binding.openapi_json.name === "openapi_json", "openapi_json.name");
  assert.ok(binding.openapi_json.language, "openapi_json.language (JSON parser) is set");
});
