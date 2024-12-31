vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.vs", "*.fs"},
    callback = function()
        vim.bo.filetype = "glsl"
    end,
})

