-- glsl file types
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.vs", "*.fs"},
    callback = function()
        vim.bo.filetype = "glsl"
    end,
})
-- Dotenv: Envrc
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = { "*.envrc" },
    callback = function()
        vim.bo.filetype = "sh"
    end,
})

-- Makefiles
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = { "*.make" },
    callback = function()
        vim.bo.filetype = "make"
    end,
})
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = { "*.h" },
    callback = function()
        vim.bo.filetype = "c"
    end,
})
