--default menu
Menu.Spacing()
Menu.Separator()
Menu.Spacing()
Menu.Text("Unplayable Lua");
Menu.Checkbox("Enable LUA", "EnableUnplayable", true);

FileSys.CreateDirectory(GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\");
FileSys.CreateDirectory(GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\");
FileSys.CreateDirectory(GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\");

--download all the shit you need lmao
--sounds
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\bruh.wav") --bruh sound effect #2
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\tacobell.wav") --taco bell sound
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\flight.wav") --flight laughing
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\psandqs.wav") --ps and qs intro
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\monkey.wav") --monke scream
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\bombplanted.wav") --bomb planted sound
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\bombdefused.wav") --bomb defused sound
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\nuclearalarm.wav") --absolute ear destroying sound
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\yankeenobrim.wav") --yankee with no brim
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\legroom.wav") --playboi carti leg room
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\deathtoears.wav") --i am so sorry for this one
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\loudmoan.wav") --loud hentai moan
--images
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\dvdplayer.gif") --bouncing dvd gif
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\hentai.png") --hentai
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\blood.png") --blood splatter
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\terrorist.png") --terrorist model
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\counterterrorist.png") --ct model
--other
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\comicsans.ttf") --comic sans bold font

--arrays of different files (for random access)
local sounds = {
    ['bruh'] = 
}

local images = {
    ['dvd'] = Render.LoadImage('dvd', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\dvdplayer.gif"),
    
}
function onShoot()
end
