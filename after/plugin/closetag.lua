-- Set the list of non-closing tags for HTML, XHTML, and PHTML files
vim.g.closetag_filenames = { "*.html", "*.xhtml", "*.phtml" }

-- Set the list of non-closing tags for XHTML and JSX files
vim.g.closetag_xhtml_filenames = { "*.xhtml", "*.jsx" }

-- Set the list of file types where this plugin is enabled
vim.g.closetag_filetypes = { "html", "xhtml", "phtml" }

-- Set the list of file types where this plugin is enabled for XHTML and JSX
vim.g.closetag_xhtml_filetypes = { "xhtml", "jsx" }

-- Set the closure tags case-sensitive (e.g., `<Link>` will be closed while `<link>` won't.)
vim.g.closetag_emptyTags_caseSensitive = 1

-- Define a dictionary for disabling auto-close if not in a "valid" region (based on filetype)
vim.g.closetag_regions = {
  typescript = { "jsxRegion", "tsxRegion" },
  javascript = { "jsxRegion" },
  typescriptreact = { "jsxRegion", "tsxRegion" },
  javascriptreact = { "jsxRegion" },
}

-- Set the shortcut for closing tags, default is '>'
vim.g.closetag_shortcut = ">"

-- Add > at current position without closing the current tag, default is ''
vim.g.closetag_close_shortcut = "<leader>>"
