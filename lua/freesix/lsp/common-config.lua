local M = {}

-- keymaps
M.keyAttach = function(bufnr)
    local lsp = require("freesix").config.lsp
    local opt = { noremap = true, silent = true, buffer = bufnr }

    -- TODO: move to config.diagnostic
    -- diagnostic
    keymap("n", lsp.open_flow, ":lua vim.diagnostic.open_float()<cr>")
    keymap("n", lsp.goto_next, ":lua vim.diagnostic.goto_next()<cr>")
    keymap("n", lsp.goto_prev, ":lua vim.diagnostic.goto_prev()<cr>")
    keymap("n", lsp.list, ":lua Telescope loclist<cr>")

    -- lsp
    keymap("n", lsp.definition, require("telescope.builtin").lsp_definitions, opt)
    keymap("n", lsp.declaration, vim.lsp.buf.declaration, opt)
    keymap("n", lsp.hover, vim.lsp.buf.hover, opt)
    keymap("n", lsp.implementation, require("telescope.builtin").lsp_implementations, opt)
    keymap(
        "n",
        lsp.references,
        ":lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_ivy())<cr>",
        opt
    )

    keymap("n", lsp.rename, "<CMD>lua vim.lsp.buf.rename()<cr>", opt)
    keymap("n", lsp.code_action, "<CMD>lua vim.lsp.buf.code_action()<cr>", opt)
    keymap("n", lsp.format, "<CMD>lua vim.lsp.buf.format({ async = true })<cr>", opt)

  -- not used
  -- vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set("n", "<space>wl", function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  -- vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
end

-- 禁用格式化功能，交给专门插件插件处理
M.disableFormat = function(client)
  if vim.fn.has("nvim-0.9") == 1 then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  else
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end
end

-- M.capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
M.capabilities = require("cmp_nvim_lsp").default_capabilities()

M.flags = {
    debounce_text_changes = 150,
}

return M
