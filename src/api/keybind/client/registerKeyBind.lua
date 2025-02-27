---bind
---@param name string
---@param defaultKey string
---@param desc string
---@param callback function
---@public
function API_KeyBind:bind(name, defaultKey, desc, callback)
    local cmd = ("ncs_%s"):format(name)
    RegisterCommand(cmd, function()
        if (not (self.enabled)) then
            return
        end
        callback()
    end)
    RegisterKeyMapping(cmd, desc, "keyboard", defaultKey)
end