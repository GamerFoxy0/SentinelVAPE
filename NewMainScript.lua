local d = "sentinelvape"
local u = "SentinelVAPE"
local t, l = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/"..u.."/refs/heads/main/version.txt"):gsub("%s+", "") end), isfile(d.."/version.cfg") and readfile(d.."/version.cfg"):gsub("%s+", "") or ""
if not t or l ~= game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/"..u.."/refs/heads/main/version.txt"):gsub("%s+", "") or not isfile(d.."/main.lua") then if isfolder(d) then pcall(delfolder, d.."/games") pcall(delfolder, d.."/guis") pcall(delfile, d.."/main.lua") end if not isfolder(d) then makefolder(d) end writefile(d.."/main.lua", game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/"..u.."/refs/heads/main/main.lua", true)) writefile(d.."/version.cfg", game:HttpGet("https://raw.githubusercontent.com/GamerFoxy0/"..u.."/refs/heads/main/version.txt"):gsub("%s+", "")) end
loadstring(readfile(d.."/main.lua"))()
