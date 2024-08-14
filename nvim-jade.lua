-- colorscheme.lua
local M = {}

M.colors = {
    bg = "#e1f6f6",
    fg = "#319b9b",
    dim_fg = "#6cb9b9",
    bright_fg = "#319b9b",
    accent = "#a6d8d8",
    error = "#b4637a",
}

function M.setup()
    local c = M.colors

    -- General UI
    vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
    vim.api.nvim_set_hl(0, "Visual", { bg = c.accent })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = c.accent })
    vim.api.nvim_set_hl(0, "LineNr", { fg = c.dim_fg })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = c.bg })
    vim.api.nvim_set_hl(0, "StatusLine", { fg = c.fg, bg = c.accent })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.dim_fg, bg = c.bg })
    vim.api.nvim_set_hl(0, "Pmenu", { fg = c.fg, bg = c.accent })
    vim.api.nvim_set_hl(0, "PmenuSel", { fg = c.bg, bg = c.bright_fg })
    vim.api.nvim_set_hl(0, "TabLine", { fg = c.fg, bg = c.bg })
    vim.api.nvim_set_hl(0, "TabLineSel", { fg = c.bg, bg = c.fg })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = c.bg })
    vim.api.nvim_set_hl(0, "Search", { fg = c.bg, bg = c.bright_fg })

    -- Syntax Highlighting
    vim.api.nvim_set_hl(0, "Comment", { fg = c.dim_fg, italic = true })
    vim.api.nvim_set_hl(0, "Constant", { fg = c.fg })
    vim.api.nvim_set_hl(0, "String", { fg = c.bright_fg })
    vim.api.nvim_set_hl(0, "Identifier", { fg = c.fg })
    vim.api.nvim_set_hl(0, "Function", { fg = c.fg })
    vim.api.nvim_set_hl(0, "Statement", { fg = c.fg, bold = true })
    vim.api.nvim_set_hl(0, "Keyword", { fg = c.fg, bold = true })
    vim.api.nvim_set_hl(0, "Type", { fg = c.fg })
    vim.api.nvim_set_hl(0, "Special", { fg = c.fg })

    -- Diagnostics
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.error })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = c.error })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = c.fg })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = c.dim_fg })

    -- Git
    vim.api.nvim_set_hl(0, "DiffAdd", { fg = c.bright_fg, bg = c.bg })
    vim.api.nvim_set_hl(0, "DiffChange", { fg = c.fg, bg = c.bg })
    vim.api.nvim_set_hl(0, "DiffDelete", { fg = c.error, bg = c.bg })
    vim.api.nvim_set_hl(0, "DiffText", { fg = c.fg, bg = c.accent })

    -- Additional Highlights
    vim.api.nvim_set_hl(0, "Title", { fg = c.fg, bold = true })
    vim.api.nvim_set_hl(0, "ErrorMsg", { fg = c.error, bg = c.bg, bold = true })
    vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.error, bg = c.bg })
    vim.api.nvim_set_hl(0, "MatchParen", { fg = c.fg, bg = c.accent, bold = true })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.fg, bg = c.accent })
end

return M

