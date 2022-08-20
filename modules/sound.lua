-- Sound
require 'modules.shortcut'

local function sendSystemKey(key)
    hs.eventtap.event.newSystemKeyEvent(key, true):post()
    hs.eventtap.event.newSystemKeyEvent(key, false):post()
end

local volume = {
    up = function() sendSystemKey("SOUND_UP") end,
    down = function() sendSystemKey("SOUND_DOWN") end,
    mute = function() sendSystemKey("MUTE") end
}
hs.hotkey.bind(sound.mute.prefix, sound.mute.key, sound.mute.message, volume.mute)
hs.hotkey.bind(sound.up.prefix, sound.up.key, sound.up.message, volume.up)
hs.hotkey.bind(sound.down.prefix, sound.down.key, sound.down.message, volume.down)
