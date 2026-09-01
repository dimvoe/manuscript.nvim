-- lua/manuscript/init.lua
-- Manuscript colorscheme module
local M = {}

function M.load()

--[[
Manuscript — A bespoke Neovim colorscheme.
Ink on aged paper, but held under a fading twilight sky.

The background is a cool, muted slate (#20262a) borrowed from the quiet
corners of GitHub Dark Dimmed, softened just enough to let the eyes rest.
The foreground is a warm, creamy ivory (#f2ecce) whispered in from the
Kanagawa Wave — the colour of candlelight on vellum.

Greens are crisp and spectral, refusing the swampy fate of lesser themes.
Purples lean royal but never shout. Yellows are sand and parchment,
never neon. It is a theme for writing code as if composing a letter by hand:
deliberate, calm, and timeless.

Designed through intuition, refined by late‑night squinting, and named
for the feeling of a scriptorium at dusk.

Author: tlotu
--]]

    local colors = {
        bg          = "#20262a",
        fg          = "#f2ecce",
        orange      = "#f88404",
        black       = "#586069",
        red         = "#ea4a5a",
        green       = "#34d058",
        yellow      = "#e5c07b",
        blue        = "#2188ff",
        magenta     = "#aa7ed3",
        cyan        = "#39c5cf",
        white       = "#dcd7ba",
        bright_black   = "#959da5",
        bright_red     = "#f97583",
        bright_green   = "#85e89d",
        bright_yellow  = "#ffea7f",
        bright_blue    = "#79b8ff",
        bright_magenta = "#b392f0",
        bright_cyan    = "#56d4dd",
        bright_white   = "#f2ecce",
    }

    local function set_hl(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- ============================================================================
    -- Base editor settings
    -- ============================================================================
    set_hl("Normal", { fg = colors.fg, bg = colors.bg })
    set_hl("NonText", { fg = colors.bright_black })
    set_hl("EndOfBuffer", { fg = colors.bg })
    set_hl("Comment", { fg = colors.bright_black, italic = true })
    set_hl("Constant", { fg = colors.cyan })
    set_hl("String", { fg = colors.green })
    set_hl("Identifier", { fg = colors.blue })
    set_hl("Function", { fg = colors.bright_blue })
    set_hl("Statement", { fg = colors.magenta })
    set_hl("PreProc", { fg = colors.red })
    set_hl("Type", { fg = colors.yellow })
    set_hl("Special", { fg = colors.bright_cyan })
    set_hl("Underlined", { underline = true })
    set_hl("Error", { fg = colors.red, bg = colors.bg })
    set_hl("Todo", { fg = colors.bright_yellow, bold = true })

    -- ============================================================================
    -- Line numbers and cursor
    -- ============================================================================
    set_hl("LineNr", { fg = colors.bright_black })
    set_hl("CursorLineNr", { fg = colors.orange, bold = true })
    set_hl("CursorLine", { bg = "none" })

    -- ============================================================================
    -- Visual mode
    -- ============================================================================
    set_hl("Visual", { fg = colors.bg, bg = colors.bright_blue })
    set_hl("VisualNOS", { fg = colors.bg, bg = colors.bright_blue })

    -- ============================================================================
    -- Status line (for lualine)
    -- ============================================================================
    set_hl("StatusLine", { fg = colors.fg, bg = colors.bg })
    set_hl("StatusLineNC", { fg = colors.bright_black, bg = colors.bg })

    -- ============================================================================
    -- Popup menu and search
    -- ============================================================================
    set_hl("Pmenu", { bg = colors.bg, fg = colors.fg })
    set_hl("PmenuSel", { bg = colors.blue, fg = colors.bg })
    set_hl("PmenuThumb", { bg = colors.cyan })
    set_hl("PmenuSbar", { bg = colors.bright_black })
    set_hl("Search", { bg = colors.yellow, fg = colors.bg })
    set_hl("IncSearch", { bg = colors.red, fg = colors.bg })
    set_hl("CurSearch", { bg = colors.bright_yellow, fg = colors.bg })

    -- ============================================================================
    -- Tabs and diagnostics
    -- ============================================================================
    set_hl("TabLine", { fg = colors.bright_black, bg = colors.bg })
    set_hl("TabLineSel", { fg = colors.bg, bg = colors.blue })
    set_hl("TabLineFill", { bg = colors.bg })
    set_hl("DiagnosticError", { fg = colors.bright_red })
    set_hl("DiagnosticWarn", { fg = colors.bright_yellow })
    set_hl("DiagnosticInfo", { fg = colors.blue })
    set_hl("DiagnosticHint", { fg = colors.bright_black })
    set_hl("DiagnosticVirtualTextError", { fg = colors.bright_red })
    set_hl("DiagnosticVirtualTextWarn", { fg = colors.bright_yellow })
    set_hl("DiagnosticVirtualTextInfo", { fg = colors.blue })
    set_hl("DiagnosticVirtualTextHint", { fg = colors.bright_black })
    set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.bright_red })
    set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.bright_cyan })
    set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
    set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.bright_black })
    set_hl("DiagnosticSignError", { fg = colors.bright_red })
    set_hl("DiagnosticSignWarn", { fg = colors.bright_yellow })
    set_hl("DiagnosticSignInfo", { fg = colors.blue })
    set_hl("DiagnosticSignHint", { fg = colors.bright_black })

    -- ============================================================================
    -- Treesitter
    -- ============================================================================
    set_hl("@variable",         { fg = colors.fg })
    set_hl("@string",           { fg = colors.green })
    set_hl("@keyword",          { fg = colors.magenta })
    set_hl("@keyword.operator", { fg = colors.yellow })
    set_hl("@comment",          { fg = colors.bright_black, italic = true })
    set_hl("@operator",         { fg = colors.yellow })
    set_hl("@number",           { fg = colors.bright_red })
    set_hl("@float",            { fg = colors.bright_red })
    set_hl("@number.float",     { fg = colors.bright_red })
    set_hl("@boolean",          { fg = colors.orange })
    set_hl("@constant.builtin", { fg = colors.orange })
    set_hl("@constant",         { fg = colors.orange })
    set_hl("@constant.macro",   { fg = colors.orange })
    set_hl("@type",             { fg = colors.blue })
    set_hl("@type.builtin",     { fg = colors.bright_magenta })
    set_hl("@function",         { fg = colors.bright_blue })
    set_hl("@method",           { fg = colors.bright_blue })
    set_hl("@function.builtin", { fg = colors.bright_cyan })
    set_hl("@attribute",         { fg = colors.red })
    set_hl("@attribute.builtin", { fg = colors.bright_blue })
    set_hl("@decorator",        { fg = colors.bright_red })
    set_hl("@decorator.call",   { fg = colors.bright_blue })
    set_hl("@function.decorator", { fg = colors.bright_blue })
    set_hl("@keyword.import",   { fg = colors.red })
    set_hl("@keyword.class",    { fg = colors.red })
    set_hl("@keyword.type",     { fg = colors.red })
    set_hl("@variable.builtin", { fg = colors.red })
    set_hl("@punctuation",      { fg = colors.bright_black })
    set_hl("@parameter",        { fg = colors.fg })
    set_hl("@field",            { fg = colors.fg })
    set_hl("@property",         { fg = colors.fg })
    set_hl("@constructor",      { fg = colors.blue })

    -- ============================================================================
    -- Telescope and Neo-tree
    -- ============================================================================
    set_hl("TelescopeBorder", { fg = colors.blue, bg = colors.bg })
    set_hl("TelescopeSelection", { bg = colors.bright_black })
    set_hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
    set_hl("NeoTreeCursorLine", { bg = colors.bright_black })
    set_hl("NeoTreeDirectoryIcon", { fg = colors.blue })
    set_hl("NeoTreeFileName", { fg = colors.fg })
    set_hl("NeoTreeGitAdded", { fg = colors.green })
    set_hl("NeoTreeGitModified", { fg = colors.yellow })
    set_hl("NeoTreeGitDeleted", { fg = colors.red })

    -- ============================================================================
    -- WhichKey and Trouble
    -- ============================================================================
    set_hl("WhichKey", { fg = colors.cyan })
    set_hl("WhichKeyGroup", { fg = colors.blue })
    set_hl("WhichKeyDesc", { fg = colors.yellow })
    set_hl("TroubleText", { fg = colors.fg })
    set_hl("TroubleNormal", { bg = colors.bg })

    -- ============================================================================
    -- Markdown headings (render-markdown.nvim)
    -- ============================================================================
    set_hl("@markup.heading.1.markdown", { fg = colors.bright_red, bold = true })
    set_hl("@markup.heading.2.markdown", { fg = colors.bright_yellow, bold = true })
    set_hl("@markup.heading.3.markdown", { fg = colors.bright_green, bold = true })
    set_hl("@markup.heading.4.markdown", { fg = colors.bright_cyan, bold = true })
    set_hl("@markup.heading.5.markdown", { fg = colors.bright_magenta, bold = true })
    set_hl("@markup.heading.6.markdown", { fg = colors.bright_black, bold = true })

    local header_bg = "#4f5258"
    set_hl("RenderMarkdownH1Bg", { bg = header_bg })
    set_hl("RenderMarkdownH2Bg", { bg = header_bg })
    set_hl("RenderMarkdownH3Bg", { bg = header_bg })
    set_hl("RenderMarkdownH4Bg", { bg = header_bg })
    set_hl("RenderMarkdownH5Bg", { bg = header_bg })
    set_hl("RenderMarkdownH6Bg", { bg = header_bg })

    -- ============================================================================
    -- Gitsigns
    -- ============================================================================
    set_hl("GitSignsAdd",    { fg = colors.bright_green })
    set_hl("GitSignsChange", { fg = colors.bright_yellow })
    set_hl("GitSignsDelete", { fg = colors.bright_red })

    set_hl("GitSignsAddNr",    { fg = colors.bright_green })
    set_hl("GitSignsChangeNr", { fg = colors.bright_yellow })
    set_hl("GitSignsDeleteNr", { fg = colors.bright_red })

    set_hl("GitSignsStagedAdd",    { fg = colors.bright_cyan })
    set_hl("GitSignsStagedChange", { fg = colors.bright_magenta })
    set_hl("GitSignsStagedDelete", { fg = colors.bright_red })

    set_hl("GitSignsCurrentLineBlame", { fg = colors.bright_black })

    -- ============================================================================
    -- nvim-cmp (completion menu)
    -- ============================================================================
    set_hl("CmpItemAbbr",           { fg = colors.fg })
    set_hl("CmpItemAbbrMatch",      { fg = colors.bright_cyan })
    set_hl("CmpItemKindFunction",   { fg = colors.bright_blue })
    set_hl("CmpItemKindMethod",     { fg = colors.bright_blue })
    set_hl("CmpItemKindVariable",   { fg = colors.fg })
    set_hl("CmpItemKindField",      { fg = colors.fg })
    set_hl("CmpItemKindProperty",   { fg = colors.fg })
    set_hl("CmpItemKindKeyword",    { fg = colors.magenta })
    set_hl("CmpItemKindClass",      { fg = colors.blue })
    set_hl("CmpItemKindModule",     { fg = colors.cyan })
    set_hl("CmpItemKindConstant",   { fg = colors.orange })
    set_hl("CmpItemKindEnum",       { fg = colors.orange })
    set_hl("CmpItemKindStruct",     { fg = colors.blue })
    set_hl("CmpItemKindTypeParameter", { fg = colors.bright_magenta })
    set_hl("CmpItemKindSnippet",    { fg = colors.bright_cyan })
    set_hl("CmpItemKindColor",      { fg = colors.bright_red })
    set_hl("CmpItemKindFile",       { fg = colors.blue })
    set_hl("CmpItemKindFolder",     { fg = colors.yellow })
    set_hl("CmpItemKindUnit",       { fg = colors.bright_green })

    -- ============================================================================
    -- nvim-notify
    -- ============================================================================
    set_hl("NotifyERRORBorder", { fg = colors.bright_red })
    set_hl("NotifyWARNBorder",  { fg = colors.yellow })
    set_hl("NotifyINFOBorder",  { fg = colors.blue })
    set_hl("NotifyHINTBorder",  { fg = colors.bright_cyan })
    set_hl("NotifyERRORTitle",  { fg = colors.bright_red, bold = true })
    set_hl("NotifyWARNTitle",   { fg = colors.yellow, bold = true })
    set_hl("NotifyINFOTitle",   { fg = colors.blue, bold = true })
    set_hl("NotifyHINTTitle",   { fg = colors.bright_cyan, bold = true })
    set_hl("NotifyLogTime",     { fg = colors.bright_black })

    -- Activate tree-sitter highlighting for supported languages
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "python", "lua", "bash", "markdown", "vim", "vimdoc" },
        callback = function(args)
            local buf = args.buf
            if vim.treesitter.highlighter.active[buf] then
                return
            end
            local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
            if not lang then
                return
            end
            local parser = vim.treesitter.get_parser(buf, lang)
            if parser then
                vim.treesitter.highlighter.new(parser)
                vim.schedule(function()
                    if vim.api.nvim_buf_is_valid(buf) then
                        vim.api.nvim_buf_call(buf, function() vim.cmd("redraw!") end)
                    end
                end)
            end
        end,
    })
end
return M
