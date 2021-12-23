local wezterm = require 'wezterm';

return {
  launch_menu = {
    {
      args = {"top"},
    },
    {
      -- Optional label to show in the launcher. If omitted, a label
      -- is derived from the `args`
      label = "GitHub Codespace",
      -- The argument array to spawn.  If omitted the default program
      -- will be used as described in the documentation above
      args = {"gh", "cs", "ssh", "-c", "gongyu-lightmatter-lightmatter-ai-zeus-jxwvvj99fq76p", "--", "-t", "tmux", "new", "-A", "-s", "zeus"},

      -- You can specify an alternative current working directory;
      -- if you don't specify one then a default based on the OSC 7
      -- escape sequence will be used (see the Shell Integration
      -- docs), falling back to the home directory.
      -- cwd = "/some/path"

      -- You can override environment variables just for this command
      -- by setting this here.  It has the same semantics as the main
      -- set_environment_variables configuration option described above
      -- set_environment_variables = { FOO = "bar" },
    },
  },

  enable_scroll_bar = true,

  -- How many lines of scrollback you want to retain per tab
  scrollback_lines = 10000,


  -- Fonts
  font = wezterm.font_with_fallback({
    "Fira Code",
    "MesloLGS NF",
  }),
  dpi = 144.0,
  font_size = 13.0,
  line_height = 1.2,


  -- https://wezfurlong.org/wezterm/colorschemes/index.html
  -- The last color scheme in the following least takes effect
  color_scheme = "Violet Dark",
  --color_scheme = "Relaxed",
  --color_scheme = "Ayu Mirage",
  --color_scheme = "Batman",
  --color_scheme = "Blue Matrix",
  color_scheme = "matrix",
  --color_scheme = "Darkside",
  --color_scheme = "Doom Peacock",
  --color_scheme = "Dracula",
  --color_scheme = "Unikitty",
  --color_scheme = "GitHub Dark",
  --color_scheme = "Molokai",
  --color_scheme = "Monokai Remastered",
  --color_scheme = "Monokai Vivid",
  --color_scheme = "Github",
  --color_scheme = "Grape",
  --color_scheme = "Grass",
  --color_scheme = "jubi",
  --color_scheme = "Laser",
  --color_scheme = "MaterialOcean",
  --color_scheme = "Mirage",
  --color_scheme = "AlienBlood",
  --color_scheme = "Afterglow",
  --color_scheme = "AdventureTime",
  --color_scheme = "Abernathy",
  --color_scheme = "Blazer",
  --color_scheme = "BlueDolphin",
  --color_scheme = "Borland",
  --color_scheme = "Night Owlish Light",
  --color_scheme = "Novel",
  --color_scheme = "Obsidian",
  --color_scheme = "Ocean",
  --color_scheme = "Pandora",
  --color_scheme = "Spacedust",
  --color_scheme = "Treehouse",
  --color_scheme = "UltraViolent",
  --color_scheme = "Violet Light",
  --color_scheme = "Wez",


  -- Window
  window_decorations = "RESIZE",

  window_padding = {
    left = "1%",
    right = "0",
    top = "0.5%",
    bottom = "0.5%",
  },

  window_background_opacity = 1.0,

  window_background_image = "/Users/gongyu/Pictures/jinx3.jpg",

  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.3,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },

  text_background_opacity = 1.0,

  window_close_confirmation = "AlwaysPrompt",

  inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
  },

  keys = {
    -- This will create a new split and run the program inside "args", e.g., args={"top"}
    {key="_", mods="CTRL|SHIFT|ALT", action=wezterm.action{SplitVertical={
      args={}, domain="CurrentPaneDomain",
    }}},
    {key="|", mods="CTRL|SHIFT|ALT", action=wezterm.action{SplitHorizontal={
      args={}, domain="CurrentPaneDomain",
    }}},
    {key="w", mods="CMD",
    action=wezterm.action{CloseCurrentPane={confirm=true}}}
  },

  -- Tabs
  -- set to false to disable the tab bar completely
  enable_tab_bar = true,

  -- set to true to hide the tab bar when there is only
  -- a single tab in the window
  hide_tab_bar_if_only_one_tab = false,

  colors = {
    tab_bar = {

      -- The color of the strip that goes along the top of the window
      background = "#0b0022",

      -- The active tab is the one that has focus in the window
      active_tab = {
        -- The color of the background area for the tab
        bg_color = "#2b2042",
        -- The color of the text for the tab
        fg_color = "#c0c0c0",

        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = "Normal",

        -- Specify whether you want "None", "Single" or "Double" underline for
        -- label shown for this tab.
        -- The default is "None"
        underline = "None",

        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,

        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = "#1b1032",
        fg_color = "#808080",

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over inactive tabs
      inactive_tab_hover = {
        bg_color = "#3b3052",
        fg_color = "#909090",
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab_hover`.
      },

      -- The new tab button that let you create new tabs
      new_tab = {
        bg_color = "#1b1032",
        fg_color = "#808080",

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over the new tab button
      new_tab_hover = {
        bg_color = "#3b3052",
        fg_color = "#909090",
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab_hover`.
      }
    }
  }
}

