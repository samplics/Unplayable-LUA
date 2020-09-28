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
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\petergriffin.png") -- peter griffin
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\pog.png") --pog
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\hitmarker.png") --mlg hitmarker
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\scope.png") --old mlg scope lol
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\obama.png") --obama
--other
URLDownloadToFile("", GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\comicsans.ttf") --comic sans bold font

--arrays of different files (for random access)
local sounds = {
    ['bruh'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\bruh.wav",
    ['tacobell'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\tacobell.wav",
    ['flight'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\flight.wav",
    ['psqs'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\psandqs.wav",
    ['monke'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\monkey.wav",
    ['bombplanted'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\bombplanted.wav",
    ['bombdefused'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\bombdefused.wav",
    ['nukealarm'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\nuclearalarm.wav",
    ['yanknobrim'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\yankeenobrim.wav",
    ['legroom'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\legroom.wav",
    ['highpitch'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\deathtoears.wav",
    ['moan'] = GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\loudmoan.wav"
}

local bombSounds = {
    [0] = sounds['bombplanted'],
    [1] = sounds['bombdefused']
}

local shootSounds = {
    [0] = sounds['bruh'],
    [1] = sounds['tacobell']
}

local damageSounds = {
    [0] = sounds['monke'],
    [1] = sounds['highpitch'],
    [2] = sounds['moan']
}

local randomSounds = {
    [0] = sounds['flight'],
    [1] = sounds['psqs'],
    [2] = sounds['nukealarm'],
    [3] = sounds['yanknobrim'],
    [4] = sounds['legroom'],
    [5] = sounds['highpitch'],
    [6] = bombSounds[0],
    [7] = bombSounds[1]
}

local images = {
    ['dvd'] = Render.LoadImage('dvd', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\dvdplayer.gif"),
    ['hentai'] = Render.LoadImage('hentai', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\hentai.png"),
    ['blood'] = Render.LoadImage('blood', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\blood.png"),
    ['t'] = Render.LoadImage('t', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\terrorist.png"),
    ['ct'] = Render.LoadImage('ct', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\counterterrorist.png"),
    ['petergriffin'] = Render.LoadImage('petergriffin', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\petergriffin.png"),
    ['pog'] = Render.LoadImage('pog', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\pog.png"),
    ['hitmarker'] = Render.LoadImage('hitmarker', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\hitmarker.png"),
    ['scope'] = Render.LoadImage('scope', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\scope.png"),
    ['obama'] = Render.LoadImage('obama', GetAppData() .. "\\INTERIUM\\CSGO\\FilesForLUA\\sampli\\Unplayable\\obama.png"),
}

function onShoot()
    PlaySound(shootSounds[math.random(#shootSounds)])
end

function onDamage()
    Render.Image(images['blood'], Globals.ScreenWidth() - Globals.ScreenWidth() / 3.5 - 10 + ImageOffset, Globals.ScreenHeight() - 25 - 10, Globals.ScreenWidth() - Globals.ScreenWidth() / 3.5 + 10 + ImageOffset, Globals.ScreenHeight() - 25 + 10, Color.new(255, 255, 255, 255), 0, 0, 1, 1) 
    PlaySound(damageSounds[math.random(#damageSounds)])
end

function soundsAtRandom()
end


