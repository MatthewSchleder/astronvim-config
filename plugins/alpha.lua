local mattLines = {
  [[   ███╗   ███╗ █████╗ ████████╗████████╗███████╗   ]],
  [[   ████╗ ████║██╔══██╗╚══██╔══╝╚══██╔══╝██╔════╝   ]],
  [[   ██╔████╔██║███████║   ██║      ██║   ███████╗   ]],
  [[   ██║╚██╔╝██║██╔══██║   ██║      ██║   ╚════██║   ]],
  [[   ██║ ╚═╝ ██║██║  ██║   ██║      ██║   ███████║   ]],
  [[   ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚══════╝   ]],
  [[         ██████╗ ██████╗  ██████╗ ██╗              ]],
  [[        ██╔════╝██╔═══██╗██╔═══██╗██║              ]], 
  [[        ██║     ██║   ██║██║   ██║██║              ]],
  [[        ██║     ██║   ██║██║   ██║██║              ]],
  [[        ╚██████╗╚██████╔╝╚██████╔╝███████╗         ]],
  [[         ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝         ]],
  [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
  [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
  [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
  [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
  [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
  [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
}

local Monday = {
  [[███╗   ███╗ ██████╗ ███╗   ██╗██████╗  █████╗ ██╗   ██╗]],
  [[████╗ ████║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝]],
  [[██╔████╔██║██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ ]],
  [[██║╚██╔╝██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  ]],
  [[██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   ]],
  [[╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ]],
}

local Tuesday = {
  [[████████╗██╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗]],
  [[╚══██╔══╝██║   ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝]],
  [[   ██║   ██║   ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ ]],
  [[   ██║   ██║   ██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  ]],
  [[   ██║   ╚██████╔╝███████╗███████║██████╔╝██║  ██║   ██║   ]],
  [[   ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ]],
}

local Wednesday = {
  [[██╗    ██╗███████╗██████╗ ███╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗]],
  [[██║    ██║██╔════╝██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝]],
  [[██║ █╗ ██║█████╗  ██║  ██║██╔██╗ ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ ]],
  [[██║███╗██║██╔══╝  ██║  ██║██║╚██╗██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  ]],
  [[╚███╔███╔╝███████╗██████╔╝██║ ╚████║███████╗███████║██████╔╝██║  ██║   ██║   ]],
  [[ ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ]],
}

local Thursday = {
  [[████████╗██╗  ██╗██╗   ██╗██████╗ ███████╗██████╗  █████╗ ██╗   ██╗]],
  [[╚══██╔══╝██║  ██║██║   ██║██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝]],
  [[   ██║   ███████║██║   ██║██████╔╝███████╗██║  ██║███████║ ╚████╔╝ ]],
  [[   ██║   ██╔══██║██║   ██║██╔══██╗╚════██║██║  ██║██╔══██║  ╚██╔╝  ]],
  [[   ██║   ██║  ██║╚██████╔╝██║  ██║███████║██████╔╝██║  ██║   ██║   ]],
  [[   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ]],
}

local Friday = {
  [[███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗]],
  [[██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝]],
  [[█████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝ ]],
  [[██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝  ]],
  [[██║     ██║  ██║██║██████╔╝██║  ██║   ██║   ]],
  [[╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ]],
}


local function lineToStartGradient(lines)
  local out = {}
  for i, line in ipairs(lines) do
    table.insert(out, { hi = "StartLogo"..i, line = line})
  end
  return out
end

local matt = lineToStartGradient(mattLines)


local function header_chars()
  local dayOfWeek = os.date("%A")
  if(dayOfWeek == "Monday") then
    return lineToStartGradient(Monday)
  end
  if(dayOfWeek == "Tuesday") then
    return lineToStartGradient(Tuesday)
  end
  if(dayOfWeek == "Wednesday") then
    return lineToStartGradient(Wednesday)
  end
  if(dayOfWeek == "Thursday") then
    return lineToStartGradient(Thursday)
  end
  if(dayOfWeek == "Friday") then
    return lineToStartGradient(Friday)
  end
  return lineToStartGradient(mattLines)
end

-- Map over the headers, setting a different color for each line.
-- This is done by setting the Highligh to StartLogoN, where N is the row index.
-- Define StartLogo1..StartLogoN to get a nice gradient.
local function header_color()
  local lines = {}
  for i, lineConfig in pairs(header_chars()) do
    local hi = lineConfig.hi
    local line_chars = lineConfig.line
    local line = {
      type = "text",
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = "center",
      },
    }
    table.insert(lines, line)
  end

  table.insert(lines, {type = "padding", val = 1})
  table.insert(lines, {type = "text", val = os.date("%Y-%m-%d %H:%M:%S"), opts = { position = "center" }})

  local output = {
    type = "group",
    val = lines,
    opts = { position = "center", },
  }

  return output
end

local theme = require("alpha.themes.theta")
local config = theme.config
local dashboard = require("alpha.themes.dashboard")
local buttons = {
    type = "group",
    val = {
        { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        dashboard.button("e", "  New file", "<cmd>ene<CR>"),
        dashboard.button("f", "  Find file", "<cmd>Telescope file_browser<CR>"),
        dashboard.button("w", "  Find text", "<cmd>Telescope live_grep<CR>"),
        dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
        dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
    },
    position = "center",
}
config.layout[1] = { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } }
config.layout[2] = header_color()
config.layout[6] = buttons
return config
