local mason_toolinstaller = require('mason-tool-installer')
mason_toolinstaller.setup({
    ensure_installed = {
        'java-debug-adapter',
        'java-test',
    }
})
