return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		-- optional: for notification view
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true, -- classic bottom cmdline for search
				command_palette = true, -- pop up cmdline + popupmenu together
				long_message_to_split = true, -- long messages go to a split
				inc_rename = false,
				lsp_doc_border = false,
			},
			-- customize more if you want:
			cmdline = {
				enabled = true,
				view = "cmdline_popup",
				opts = {},
			},
			routes = {
				{
					filter = { event = "msg_show", kind = "search_count" },
					opts = { skip = true },
				},
			},
		})
	end,
}
