return {
  { "echasnovski/mini.ai",       opts = {}, },
  { "echasnovski/mini.animate",  opts = {}, },
  { "echasnovski/mini.pairs",    opts = {}, },
  { "echasnovski/mini.surround", opts = {}, },
  {
    "echasnovski/mini.starter",
    event = "VimEnter",
    opts = function()
      local logo = table.concat({
        "                                                   ",
        "                                              ___  ",
        "                                           ,o88888 ",
        "                                        ,o8888888' ",
        "                  ,:o:o:oooo.        ,8O88Pd8888\"  ",
        "              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'\"    ",
        "            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O\"      ",
        "           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8\"        ",
        "          , ..:.::o:ooOoOO8O888O8O,COCOO\"          ",
        "         , . ..:.::o:ooOoOOOO8OOOOCOCO\"            ",
        "          . ..:.::o:ooOoOoOO8O8OCCCC\"o             ",
        "             . ..:.::o:ooooOoCoCCC\"o:o             ",
        "             . ..:.::o:o:,cooooCo\"oo:o:            ",
        "          `   . . ..:.:cocoooo\"'o:o:::'            ",
        "          .`   . ..::ccccoc\"'o:o:o:::'             ",
        "         :.:.    ,c:cccc\"':.:.:.:.:.'              ",
        "       ..:.:\"'`::::c:\"'..:.:.:.:.:.'               ",
        "     ...:.'.:.::::\"'    . . . . .'                 ",
        "    .. . ....:.\"' `   .  . . ''                    ",
        "  . . . ....\"'                                     ",
        "  .. . .\"'                                         ",
        " .                                                 ",
        "                                                   "
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
