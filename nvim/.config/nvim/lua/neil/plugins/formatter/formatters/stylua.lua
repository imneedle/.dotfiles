local util = require("formatter.util")

return function()
    return {
        exe = "stylua",
        args = {
            "--sort-requires",
            "--column-width",
            80,
            "--indent-type",
            "Spaces",
            "--indent-width",
            4,
            "--stdin-filepath",
            util.escape_path(util.get_current_buffer_file_path()),
        },
        -- stdin = true,
    }
end
