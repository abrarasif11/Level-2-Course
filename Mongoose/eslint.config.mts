import js from "@eslint/js";
import globals from "globals";
import tseslint from "typescript-eslint";
import { defineConfig } from "eslint/config";

export default defineConfig([
  // 🧹 Ignore folders
  {
    ignores: ["dist/**", "node_modules/**", "build/**"],
  },

  // 🧠 Main linting config
  {
    files: ["**/*.{js,ts,mjs,cjs}"],
    languageOptions: {
      parser: tseslint.parser,
      parserOptions: {
        ecmaVersion: "latest",
        sourceType: "module",
        project: "./tsconfig.json", // helps TypeScript rules detect types
      },
      globals: {
        ...globals.browser,
        ...globals.node,
      },
    },
    plugins: {
      "@typescript-eslint": tseslint.plugin,
    },
    extends: [
      js.configs.recommended,              // JavaScript recommended rules
      ...tseslint.configs.recommended,     // TypeScript recommended rules
      ...tseslint.configs.strictTypeChecked, // Optional: stricter type rules
    ],
    rules: {
      /* 🌐 General Rules */
      "no-console": "warn",
      "no-debugger": "error",

      /* 🧩 TypeScript Rules */
      "no-unused-vars": "off", // disable base rule to avoid conflict
      "@typescript-eslint/no-unused-vars": ["error", { argsIgnorePattern: "^_" }],
      "@typescript-eslint/no-explicit-any": "warn",
      "@typescript-eslint/explicit-function-return-type": "off",
      "@typescript-eslint/no-non-null-assertion": "off",

      /* 💅 Code Style Suggestions */
      "prefer-const": "error",
      "eqeqeq": ["error", "always"],
      "curly": ["error", "all"],
    },
  },
]);
