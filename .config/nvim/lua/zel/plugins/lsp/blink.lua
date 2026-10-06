return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "*",
    opts = {
        keymap = {
            preset = "default",
            ["<CR>"] = { "accept", "fallback" },
            ["<C-l>"] = { "snippet_forward", "fallback" },
            ["<C-h>"] = { "snippet_backward", "fallback" },
        },
        appearance = { nerd_font_variant = "mono" },
        sources = { default = { "lsp", "path", "snippets", "buffer" } },
        completion = {
            documentation = { auto_show = true, auto_show_delay_ms = 200 },
        },
    },
}
