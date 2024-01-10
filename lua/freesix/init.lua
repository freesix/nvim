local M = {}
M.version = "v0.0.1"

M.config = require("freesix.config")

function M.setup(user_config)
    require("freesix.options")
    require("freesix.utils.global")
    require("freesix.keymaps")
    require("freesix.colorscheme").reset()

    local lazyManager = require("freesix.lazy")
    if not lazyManager.avaliable() then
      lazyManager.install()
    end
    lazyManager.setup()
end


return M
