return {
	{
		"echasnovski/mini.pairs",
		opts = {},
	},
	{
		"echasnovski/mini.indentscope",
		opts = {
			symbol = "│",
			options = { try_as_border = true },
		},
	},
	{
		"echasnovski/mini.starter",
		event = "VimEnter",
		opts = function()
			local logo = table.concat({
				"                                                      ",
				"	  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ",
				"	  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ",
				"	 ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ",
				"	 ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ",
				"	 ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ",
				"	 ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ",
				"	 ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ",
				"	    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ",
				"	          ░    ░  ░    ░ ░        ░   ░         ░    ",
				"	                                 ░                   ",
				"	                                                     ",
			}, "\n")
			local pad = string.rep(" ", 22)
			local new_section = function(name, action, section)
				return { name = name, action = action, section = pad .. section }
			end

			local starter = require("mini.starter")
			local config = {
				evaluate_single = true,
				header = logo,
				items = {
					new_section("New file", "ene | startinsert", "Built-in"),
					new_section("Quit", "qa", "Built-in"),
					new_section("Restore session", [[lua require("persistence").load()]], "Session"),
					new_section("Lazy Extras", "LazyExtras", "Config"),
					new_section("Lazy", "Lazy", "Config"),
				},
				content_hooks = {
					starter.gen_hook.adding_bullet(pad .. "░ ", false),
					starter.gen_hook.aligning("center", "center"),
				},
			}
			return config
		end,
	},
}
