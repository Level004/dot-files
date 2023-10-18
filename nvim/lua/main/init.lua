require("main.remap")
require("main.set")

require('telescope').setup{ 
    defaults = { 
        file_ignore_patterns = { 
            "node_modules",
            ".git",
            "vendor",
            ".idea",
        }
    }
}
