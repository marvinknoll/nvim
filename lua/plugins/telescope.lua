return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  defaults = {
    vimgrep_arguments = {
      -- 'rg',
      -- '--color=never',
      -- '--no-heading',
      -- '--with-filename',
      -- '--line-number',
      -- '--column',
      -- '--smart-case',
      "--no-ignore-vcs",
      "--hidden",
    },
  },
  config = function()
    require("telescope").load_extension("live_grep_args")
  end,
}
