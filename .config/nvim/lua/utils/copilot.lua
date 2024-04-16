function returnIfCopilot(obj)
    local f = io.open("/home/fdiengott/.config/github-copilot/hosts.json", "r")
    if f ~= nil then
        io.close(f)

        return obj
    else
        return {}
    end
end
