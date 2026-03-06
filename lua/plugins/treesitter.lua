return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local parsers = { 'bash', 'c', 'css', 'diff', 'html', 'javascript', 'jsdoc', 'json', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'tsx', 'typescript', 'vim', 'vimdoc' }
    require('nvim-treesitter').setup()

    vim.defer_fn(function()
      require('nvim-treesitter').install(parsers):wait(300000)
    end, 0)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = parsers,
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
