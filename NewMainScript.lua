if game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/SentinelVAPE/refs/heads/main/version.txt"):gsub("%s+", "") ~= "0.8.2" then
     if isfolder("sentinelvape") then
        delfolder("sentinelvape/games")
        delfolder("sentinelvape/guis")
        if isfile("sentinelvape/main.lua") then
            delfile("sentinelvape/main.lua")
        end
    end
end

if not isfolder("sentinelvape") then
    makefolder("sentinelvape")
end
if isfolder("sentinelvape") and not isfile("sentinelvape/main.lua") then
    writefile("sentinelvape/main.lua", game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/SentinelVAPE/refs/heads/main/main.lua", true))
    loadstring(readfile("sentinelvape/main.lua"))()
elseif isfolder("sentinelvape") and isfile("sentinelvape/main.lua") then
    loadstring(readfile("sentinelvape/main.lua"))()
end
