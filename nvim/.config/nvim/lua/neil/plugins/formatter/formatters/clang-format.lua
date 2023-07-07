local util = require("formatter.util")

return function()
    return {
        exe = "clang-format",
        args = {
            "--assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
            '-style="{BasedOnStyle: LLVM, IndentWidth: 4, BinPackArguments: false, BinPackParameters: false, Standard: Latest}"',
        },
        try_node_modules = true,
        stdin = true,
    }
end
