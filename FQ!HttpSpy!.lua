local function protectFromHttpSpy()
    local originalRequest
    if syn and syn.request then
        originalRequest = syn.request
    elseif http and http.request then
        originalRequest = http.request
    else
        return
    end
    
    local function isFunctionHooked(func)
        local info = debug.getinfo(func)
        if info.nups > 0 then
            for i = 1, info.nups do
                local name, value = debug.getupvalue(func, i)
                if name and type(value) == "function" then
                    local funcInfo = debug.getinfo(value)
                    if funcInfo.source and tostring(funcInfo.source):find("HttpSpy") then
                        return true
                    end
                end
            end
        end
        return false
    end
    
    local currentRequest = syn and syn.request or http.request
    if isFunctionHooked(currentRequest) then
        game.Players.LocalPlayer:Kick("HttpSpy劫持链接💀Bro Stop")
             while true do
                 print("sz")
             end
        return
    end
    
    local checkInterval = 0.001
    while true do
        wait(checkInterval)
        
        local currentRequest = syn and syn.request or http.request
        
        if isFunctionHooked(currentRequest) or currentRequest ~= originalRequest then
            game.Players.LocalPlayer:Kick("HttpSpy劫持链接💀Bro Stop")
            break
        end
        
        --用不用都行
        local coreGui = game:GetService("CoreGui")
        if coreGui:FindFirstChild("HttpSpyGui") then
            game.Players.LocalPlayer:Kick("检测到HttpSpy GUI")
                  while true do
                     print("sz")
                  end
            break
        end
    end
end

pcall(protectFromHttpSpy)