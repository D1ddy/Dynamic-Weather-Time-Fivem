RegisterCommand('weather', function()
    SendNUI('openUI', true)
    SetNuiFocus(true, true)
    SendNUI('getTime',GetClockHours())
end, false)
RegisterCommand('weather:random', function()
    local allWeatherTypes = {'CLEAR','EXTRASUNNY','CLOUDS','OVERCAST','RAIN','CLEARING','THUNDER','SMOG','FOGGY','XMAS','SNOW','SNOWLIGHT','BLIZZARD','HALLOWEEN','NEUTRAL','RAIN_HALLOWEEN','SNOW_HALLOWEEN'}
    --[SetRandomWeatherType()] -- for vanila fivem server --
    local randomWeather = allWeatherTypes[math.random(1,#allWeatherTypes)]
    TriggerServerEvent('qb-weathersync:server:setWeather', randomWeather)
    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"[Server]", "Weather changed to " ..randomWeather}
    })
end, false)

RegisterNUICallback('setWeather', function(data,cb)
    --[SetOverrideWeather(data)] --for vanila fivem server --
    --string.gsub used because the data was sent as ""CLEAR"" so it removes ""--
    local weather = string.gsub(data,"\"","")
    TriggerServerEvent('qb-weathersync:server:setWeather', weather)
end)
RegisterNUICallback('setTime', function(data,cb)
    local hour = tonumber(data)
    local minute = 5
    NetworkOverrideClockTime(tonumber(data), 5, 5)
    TriggerServerEvent('qb-weathersync:server:setTime',hour,minute)
end)
RegisterNUICallback('close', function(_, cb)
    cb({})
    SetNuiFocus(false, false)
end)
