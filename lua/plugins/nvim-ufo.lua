return {
  "kevinhwang91/nvim-ufo",
  event = "VeryLazy",
  dependencies = "kevinhwang91/promise-async",
  init = function()
    local set_foldcolumn_for_file = vim.api.nvim_create_augroup("set_foldcolumn_for_file", {
      clear = true,
    })
    vim.api.nvim_create_autocmd("BufWinEnter", {
      group = set_foldcolumn_for_file,
      callback = function()
        if vim.bo.buftype == "" then
          vim.wo.foldcolumn = "1"
        else
          vim.wo.foldcolumn = "0"
        end
      end,
    })
    vim.api.nvim_create_autocmd("OptionSet", {
      group = set_foldcolumn_for_file,
      pattern = "buftype",
      callback = function()
        if vim.bo.buftype == "" then
          vim.wo.foldcolumn = "1"
        else
          vim.wo.foldcolumn = "0"
        end
      end,
    })
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
  end,
  config = function()
    require("ufo").setup({
      close_fold_kinds = { "imports" },
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      desc = "Setup Ufo `K` with LSP hover",
      callback = function(args)
        local bufnr = args.buf

        vim.keymap.set("n", "K", function()
          local winid = require("ufo").peekFoldedLinesUnderCursor()
          if not winid then
            vim.lsp.buf.hover()
          end
        end, { buffer = bufnr, desc = "LSP: Signature help" })
      end,
    })
  end,
