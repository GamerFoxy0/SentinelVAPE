if not isfolder("sentinelvape") then
    makefolder("sentinelvape")
end
if isfolder("sentinelvape") and not isfile("sentinelvape/main.lua") then
    writefile("sentinelvape/main.lua", game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/SentinelVAPE/refs/heads/main/main.lua", true))
    loadstring(readfile("sentinelvape/main.lua"))()
elseif isfolder("sentinelvape") and isfile("sentinelvape/main.lua") then
    loadstring(readfile("sentinelvape/main.lua"))()
end
