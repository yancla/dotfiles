require"tokyonight".setup {
    transparent = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = { bold = true },

    }
}

vim.cmd[[colorscheme tokyonight]]
