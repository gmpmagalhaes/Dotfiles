function init()
    local path = getPackerInstallPath()
    if file_exists(path) then
        return
    else
        print("packer not found at " .. path)
        print("Installing...")
        os.execute("git clone https://github.com/wbthomason/packer.nvim " .. path)
    end
end

function isRunningUnix()
    local popen_status, popen_result = pcall(io.popen, "")
    if popen_status then
        return true
    else
        return false
    end
end

function getPackerInstallPath()
    if isRunningUnix() == true then
        return "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
    else
        return "$env:LOCALAPPDATA\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
    end
end

function file_exists(name)
    local f=io.open(name,"r")
    print(f)
    if f~=nil then io.close(f) return true else return false end
end