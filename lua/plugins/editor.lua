return {
  {
    "folke/which-key.nvim",
    opts = {
      preset = "classic",
    },
  },
  {
    "sudo-tee/opencode.nvim",
    enabled = true,
    opts = {
      which_key_format = true, -- Enable which-key format descriptions for keymaps
      preferred_picker = "snacks", -- 'telescope', 'fzf', 'mini.pick', 'snacks', 'select', if nil, it will use the best available picker. Note mini.pick does not support multiple selections
      preferred_completion = "blink", -- 'blink', 'nvim-cmp','vim_complete' if nil, it will use the best available completion
      default_global_keymaps = true, -- If false, disables all default global keymaps
      default_mode = "plan", -- 'build' or 'plan' or any custom configured. @see [OpenCode Agents](https://opencode.ai/docs/modes/)
      keymap_prefix = "<leader>o", -- Default keymap prefix for global keymaps change to your preferred prefix and it will be applied to all keymaps starting with <leader>o
      keymap = {
        editor = {
          ["<leader>og"] = { "toggle", desc = "Toggle opencode" },
          ["<leader>oi"] = { "open_input", desc = "Open input" },
          ["<leader>oI"] = { "open_input_new_session", desc = "Open input (new session)" },
          ["<leader>oo"] = { "open_output", desc = "Open output" },
          ["<leader>ot"] = { "toggle_focus", desc = "Toggle focus" },
          ["<leader>oT"] = { "timeline", desc = "Timeline picker" },
          ["<leader>oq"] = { "close", desc = "Close" },
          ["<leader>os"] = { "select_session", desc = "Select session" },
          ["<leader>oR"] = { "rename_session", desc = "Rename session" },
          ["<leader>op"] = { "configure_provider", desc = "Provider/model" },
          ["<leader>oz"] = { "toggle_zoom", desc = "Zoom" },
          ["<leader>ov"] = { "paste_image", desc = "Paste image" },
          ["<leader>od"] = { "diff_open", desc = "Diff open" },
          ["<leader>o]"] = { "diff_next", desc = "Diff next" },
          ["<leader>o["] = { "diff_prev", desc = "Diff prev" },
          ["<leader>oc"] = { "diff_close", desc = "Diff close" },
          ["<leader>ora"] = { "diff_revert_all_last_prompt", desc = "Revert all (last)" },
          ["<leader>ort"] = { "diff_revert_this_last_prompt", desc = "Revert this (last)" },
          ["<leader>orA"] = { "diff_revert_all", desc = "Revert all" },
          ["<leader>orT"] = { "diff_revert_this", desc = "Revert this" },
          ["<leader>orr"] = { "diff_restore_snapshot_file", desc = "Restore file" },
          ["<leader>orR"] = { "diff_restore_snapshot_all", desc = "Restore all" },
          ["<leader>ox"] = { "swap_position", desc = "Swap pane" },
          ["<leader>opa"] = { "permission_accept", desc = "Accept" },
          ["<leader>opA"] = { "permission_accept_all", desc = "Accept all" },
          ["<leader>opd"] = { "permission_deny", desc = "Deny" },
        },
        input_window = {
          ["<cr>"] = { "submit_input_prompt", mode = { "n", "i" }, desc = "Submit" },
          ["<esc>"] = { "close", desc = "Close" },
          ["<C-c>"] = { "cancel", desc = "Cancel" },
          ["~"] = { "mention_file", mode = "i", desc = "Mention file" },
          ["@"] = { "mention", mode = "i", desc = "Mention" },
          ["/"] = { "slash_commands", mode = "i", desc = "Commands" },
          ["#"] = { "context_items", mode = "i", desc = "Context" },
          ["<M-v>"] = { "paste_image", mode = "i", desc = "Paste image" },
          ["<C-i>"] = { "focus_input", mode = { "n", "i" }, desc = "Focus input" },
          ["<tab>"] = { "toggle_pane", mode = { "n", "i" }, desc = "Toggle pane" },
          ["<up>"] = { "prev_prompt_history", mode = { "n", "i" }, desc = "Prev history" },
          ["<down>"] = { "next_prompt_history", mode = { "n", "i" }, desc = "Next history" },
          ["<M-m>"] = { "switch_mode", desc = "Switch mode" },
        },
        output_window = {
          ["<esc>"] = { "close", desc = "Close" },
          ["<C-c>"] = { "cancel", desc = "Cancel" },
          ["]]"] = { "next_message", desc = "Next message" },
          ["[["] = { "prev_message", desc = "Prev message" },
          ["<tab>"] = { "toggle_pane", mode = { "n", "i" }, desc = "Toggle pane" },
          ["i"] = { "focus_input", "n", desc = "Focus input" },
          ["<leader>oS"] = { "select_child_session", desc = "Child session" },
          ["<leader>oD"] = { "debug_message", desc = "Debug message" },
          ["<leader>oO"] = { "debug_output", desc = "Debug output" },
          ["<leader>ods"] = { "debug_session", desc = "Debug session" },
        },
        permission = {
          accept = "a", -- Accept permission request once (only available when there is a pending permission request)
          accept_all = "A", -- Accept all (for current tool) permission request once (only available when there is a pending permission request)
          deny = "d", -- Deny permission request once (only available when there is a pending permission request)
        },
        session_picker = {
          rename_session = { "<C-r>", desc = "Rename selected session in the session picker" },
          delete_session = { "<C-x>", desc = "Delete selected session in the session picker" },
          new_session = { "<C-e>", desc = "Create and switch to a new session in the session picker" },
        },
        timeline_picker = {
          undo = { "<C-u>", mode = { "i", "n" }, desc = "Undo to selected message in timeline picker" },
          fork = { "<C-f>", mode = { "i", "n" }, desc = "Fork from selected message in timeline picker" },
        },
        history_picker = {
          delete_entry = { "<C-d>", mode = { "i", "n" }, desc = "Delete selected entry in the history picker" },
          clear_all = { "<C-X>", mode = { "i", "n" }, desc = "Clear all entries in the history picker" },
        },
      },
      ui = {
        position = "left", -- 'right' (default) or 'left'. Position of the UI split
        input_position = "bottom", -- 'bottom' (default) or 'top'. Position of the input window
        window_width = 0.30, -- Width as percentage of editor width
        zoom_width = 0.8, -- Zoom width as percentage of editor width
        input_height = 0.15, -- Input height as percentage of window height
        display_model = true, -- Display model name on top winbar
        display_context_size = true, -- Display context size in the footer
        display_cost = true, -- Display cost in the footer
        window_highlight = "Normal:OpencodeBackground,FloatBorder:OpencodeBorder", -- Highlight group for the opencode window
        icons = {
          preset = "nerdfonts", -- 'nerdfonts' | 'text'. Choose UI icon style (default: 'nerdfonts')
          overrides = {}, -- Optional per-key overrides, see section below
        },
        output = {
          tools = {
            show_output = true, -- Show tools output [diffs, cmd output, etc.] (default: true)
          },
          rendering = {
            markdown_debounce_ms = 250, -- Debounce time for markdown rendering on new data (default: 250ms)
            on_data_rendered = nil, -- Called when new data is rendered; set to false to disable default RenderMarkdown/Markview behavior
          },
        },
        input = {
          text = {
            wrap = true, -- Wraps text inside input window
          },
        },
        completion = {
          file_sources = {
            enabled = true,
            preferred_cli_tool = "server", -- 'fd','fdfind','rg','git','server' if nil, it will use the best available tool, 'server' uses opencode cli to get file list (works cross platform) and supports folders
            ignore_patterns = {
              "^%.git/",
              "^%.svn/",
              "^%.hg/",
              "node_modules/",
              "%.pyc$",
              "%.o$",
              "%.obj$",
              "%.exe$",
              "%.dll$",
              "%.so$",
              "%.dylib$",
              "%.class$",
              "%.jar$",
              "%.war$",
              "%.ear$",
              "target/",
              "build/",
              "dist/",
              "out/",
              "deps/",
              "%.tmp$",
              "%.temp$",
              "%.log$",
              "%.cache$",
            },
            max_files = 10,
            max_display_length = 50, -- Maximum length for file path display in completion, truncates from left with "..."
          },
        },
      },
      context = {
        enabled = true, -- Enable automatic context capturing
        cursor_data = {
          enabled = false, -- Include cursor position and line content in the context
        },
        diagnostics = {
          info = false, -- Include diagnostics info in the context (default to false
          warn = true, -- Include diagnostics warnings in the context
          error = true, -- Include diagnostics errors in the context
        },
        current_file = {
          enabled = true, -- Include current file path and content in the context
        },
        selection = {
          enabled = true, -- Include selected text in the context
        },
      },
      debug = {
        enabled = false, -- Enable debug messages in the output window
      },
      prompt_guard = nil, -- Optional function that returns boolean to control when prompts can be sent (see Prompt Guard section)

      -- User Hooks for custom behavior at certain events
      hooks = {
        on_file_edited = nil, -- Called after a file is edited by opencode.
        on_session_loaded = nil, -- Called after a session is loaded.
        on_done_thinking = nil, -- Called when opencode finishes thinking (all jobs complete).
        on_permission_requested = nil, -- Called when a permission request is issued.
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
          file_types = { "markdown", "opencode_output" },
        },
        ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
      },
      "saghen/blink.cmp",
      "folke/snacks.nvim",
    },
  },
}
