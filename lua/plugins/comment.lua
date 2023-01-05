local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup({
  ---Pre-hook, called before commenting the line
  ---@type fun(ctx: Ctx):string
  -- pre_hook = function(ctx)
  --   local U = require("Comment.utils")

  --   local location = nil
  --   local ts_status_ok, ts_comment_utils =
  --     pcall(require, "ts_context_commentstring.utils")
  --   if not ts_status_ok then
  --     return
  --   end
  --   if ctx.ctype == U.ctype.block then
  --     location = ts_comment_utils.get_cursor_location()
  --   elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
  --     location = ts_comment_utils.get_visual_start_location()
  --   end

  --   return require("ts_context_commentstring.internal").calculate_commentstring({
  --     key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
  --     location = location,
  --   })
  -- end,
})
