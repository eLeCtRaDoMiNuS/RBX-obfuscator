--[[
    Version: 1.0.4
    Last Update: 13 / 11 / 2022 | Day / Month / Year
]]--

--// Source
function obfuscate(a,b,c)warn("Started obfuscate")task.spawn(function()local d=b or"Taurus_"local e;a=a or[[print("Hello World!")]]local f=tick()if typeof(c)=="string"and c~=nil then e="    "..tostring(c).." | Secure by Ghost-Ducky#7698"else e="    ".."WaterMark".." | Secure by Ghost-Ducky#7698"end;e="--[[".."\n"..tostring(e).."\n".."]]--".."\n\n"local g=function(h)local i={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}local j;if math.random(1,2)==1 then j=""..i[math.random(1,26)]else j=""..tostring(i[math.random(1,26)]):upper()end;for k=1,tonumber(h)do if math.random(1,2)==1 then local l=i[math.random(1,26)]if math.random(1,2)==1 then j=j..tostring(l):upper()else j=j..tostring(l)end else j=j..tostring(math.random(0,9))end end;return tostring(j)end;local m=function(n)local o={}for k,p in ipairs(n:split'')do local q=""local r=p:byte()while r>0 do q=tostring(r%2)..q;r=math.modf(r/2)end;table.insert(o,string.format("%.8d",q))end;return table.concat(o," ")end;local s=function(t,u)local v=1;local w={"Deobfuscate?","Hello World!","IronBrew Fork? Nope.","PSU Fork? Nope.","Touch some grass"}for k,x in pairs(w)do if k>v then v=k end end;for k=1,tonumber(t)do local y=[[local ]]..d..tostring(g(math.random(10,12)))..[[ = ]]..'"'..m(tostring(w[math.random(1,tonumber(v))]))..'"'.."; "u=u..y end;return tostring(u)end;local z={TableByte=g(math.random(15,20)),Table_concat=g(math.random(15,20)),Loadstring=g(math.random(15,20))}local A=[[function() ]]..s(math.random(20,30),"")..[[ end]]local B=[[local ]]..d..tostring(g(math.random(15,20)))..[[ = ]]..A;local C=""for k=1,string.len(a)do C=C..'"\\'..string.byte(a,k)..'", 'task.wait(.0000001)end;local D=[[local ]]..d..tostring(z.TableByte)..[[ = {]]..C..[[}]]local E=[[local ]]..d..tostring(z.Loadstring)..[[ = loadstring(table.concat({"\114", "\101", "\116", "\117", "\114", "\110", "\32", "\102", "\117", "\110", "\99", "\116", "\105", "\111", "\110", "\40", "\98", "\121", "\116", "\101", "\41", "\10", "\32", "\32", "\32", "\32", "\105", "\102", "\32", "\116", "\121", "\112", "\101", "\111", "\102", "\40", "\98", "\121", "\116", "\101", "\41", "\32", "\61", "\61", "\32", "\34", "\116", "\97", "\98", "\108", "\101", "\34", "\32", "\116", "\104", "\101", "\110", "\10", "\32", "\32", "\32", "\32", "\32", "\32", "\32", "\32", "\108", "\111", "\97", "\100", "\115", "\116", "\114", "\105", "\110", "\103", "\40", "\116", "\97", "\98", "\108", "\101", "\46", "\99", "\111", "\110", "\99", "\97", "\116", "\40", "\98", "\121", "\116", "\101", "\41", "\41", "\40", "\41", "\10", "\32", "\32", "\32", "\32", "\101", "\108", "\115", "\101", "\10", "\32", "\32", "\32", "\32", "\32", "\32", "\32", "\32", "\98", "\121", "\116", "\101", "\32", "\61", "\32", "\123", "\98", "\121", "\116", "\101", "\125", "\10", "\32", "\32", "\32", "\32", "\32", "\32", "\32", "\32", "\108", "\111", "\97", "\100", "\115", "\116", "\114", "\105", "\110", "\103", "\40", "\116", "\97", "\98", "\108", "\101", "\46", "\99", "\111", "\110", "\99", "\97", "\116", "\40", "\98", "\121", "\116", "\101", "\41", "\41", "\40", "\41", "\10", "\32", "\32", "\32", "\32", "\101", "\110", "\100", "\10", "\101", "\110", "\100", "\10",}))()]]local F={[1]=d..tostring(z.Loadstring),[2]=d..tostring(z.TableByte)}local G=function(t,H)local I={}for k=1,tonumber(t)do local J=d..tostring(g(math.random(15,20)))local K;if H~=nil then K="return "..tostring(g(tonumber(H)))else K="return "..tostring(g(math.clamp(1000,string.len(a)/2,string.len(a))))end;local L=""for M=1,string.len(K)do L=L..'"\\'..string.byte(K,M)..'", 'task.wait(.0000001)end;local N=[[local ]]..J..[[ = {]]..L..[[}; ]]..[[local ]]..J.." = "..F[1]..[[(]]..J..[[); ]]table.insert(I,N)end;return unpack(I)end;local O=e..B.."; "..E.."; "..G(math.random(2,5),math.random(300,500))..D.."; "..[[local ]]..d..tostring(g(math.random(15,20))).." = "..F[1].."("..F[2]..")".."; "..G(math.random(1,2))setclipboard(O)warn("Done obfuscate in "..tostring(tick()-f).." second")return end)end;return function(a,P,c)obfuscate(a,P,c)end
