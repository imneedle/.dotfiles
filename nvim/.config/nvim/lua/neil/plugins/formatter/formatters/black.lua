local util = require("formatter.util")

return function()
  return {
    exe = "black",
    args = { "-q", "--stdin-filename", util.escape_path(util.get_current_buffer_file_name()), "-" },
    stdin = true,
  }
end
