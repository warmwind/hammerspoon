-- Spotify
require 'modules.shortcut'

local function playpause() hs.spotify.playpause() end
local function next() hs.spotify.next() end
local function previous() hs.spotify.previous() end

hs.hotkey.bind(spotify.play.prefix, spotify.play.key, spotify.play.message,
               playpause)
hs.hotkey
    .bind(spotify.next.prefix, spotify.next.key, spotify.next.message, next)
hs.hotkey.bind(spotify.previous.prefix, spotify.previous.key,
               spotify.previous.message, previous)
