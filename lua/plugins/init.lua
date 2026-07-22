return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
{
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      git_ignored = false, -- show gitignored files/folders
      dotfiles = false,    -- optional: also show hidden dotfiles
    },
    git = {
      ignore = false, -- don't dim/hide based on git status
    },
  },
},
  {
    "github/copilot.vim",
    lazy = true,
    keys = { "<leader>ce" },
    config = function()
      -- Set your Accept suggestion key
      vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
      
      -- Keys to manually toggle Copilot
      vim.keymap.set("n", "<leader>cd", ":Copilot disable <CR>", {})
      vim.keymap.set("n", "<leader>ce", ":Copilot enable <CR>", {})
    end,
  },
{
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {}, -- don't hardcode ignores
    },
    pickers = {
      find_files = {
        hidden = true,      -- show dotfiles
        no_ignore = true,   -- show .gitignore'd files
      },
    },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- Optional: customize the dropdown appearance
              winblend = 10,
              previewer = false,
            },
          },
        },
      }
      -- load the extension
      require("telescope").load_extension "ui-select"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "svelte",
      },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
