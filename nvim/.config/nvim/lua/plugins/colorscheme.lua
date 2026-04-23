-- Gruvbox palette (aligned with vscode-theme-gruvbox)
local colors = {
  purple = "#d3869b",
  aqua = "#8ec07c",
  yellow = "#fabd2f",
  orange = "#fe8019",
  blue = "#83a598",
}

return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "soft", -- "soft", "medium" (""), or "hard"
      overrides = {
        -- Functions: purple (like vscode gruvbox)
        ["@function"] = { fg = colors.purple },
        ["@function.call"] = { fg = colors.purple },
        ["@function.builtin"] = { fg = colors.purple },
        ["@method"] = { fg = colors.purple },
        ["@method.call"] = { fg = colors.purple },
        ["Function"] = { fg = colors.purple },
        -- LSP semantic tokens
        ["@lsp.type.function"] = { fg = colors.purple },
        ["@lsp.type.method"] = { fg = colors.purple },
      },
    },
    init = function()
      vim.o.background = "dark"
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
