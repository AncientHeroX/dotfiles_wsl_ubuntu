-- glsl file types
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.vs", "*.fs"},
    callback = function()
        vim.bo.filetype = "glsl"
    end,
})
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = { "*.envrc" },
    callback = function()
        vim.bo.filetype = "sh"
    end,
})

