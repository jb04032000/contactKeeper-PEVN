/* eslint-env node */
require("@rushstack/eslint-patch/modern-module-resolution");

module.exports = {
  root: true,
  extends: [
    "plugin:vue/vue3-essential",
    "eslint:recommended",
    "@vue/eslint-config-prettier",
    "plugin:vue/vue3-recommended",
  ],
  parserOptions: {
    ecmaVersion: "latest",
  },
  rules: {
    "vue/no-multiple-template-root": "off",
    "vue/multi-word-component-names": "off",
    "prettier/prettier": ["error", { endOfLine: "off" }],
    "no-console": process.env.NODE_ENV === "production" ? "warn" : "off",
    "no-debugger": process.env.NODE_ENV === "production" ? "warn" : "off",
  },
};
