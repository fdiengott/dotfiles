function is_mac()
    local output = io.popen("uname"):read("*l")
    return output == "Darwin"
end

function is_windows()
    local output = io.popen("echo %OS%"):read("*l")
    return output == "Windows_NT"
end

function is_linux()
    local output = io.popen("uname"):read("*l")
    return output == "Linux"
end
