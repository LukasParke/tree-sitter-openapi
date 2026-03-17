#!/usr/bin/env node

const { execSync } = require("child_process");
const { join } = require("path");

const root = join(__dirname, "..");
for (const dir of ["tree-sitter-openapi", "tree-sitter-openapi-json"]) {
  console.log(`Building ${dir}...`);
  execSync("tree-sitter generate", {
    stdio: "inherit",
    cwd: join(root, dir),
  });
}
