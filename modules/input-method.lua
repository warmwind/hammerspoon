-- 输入法切换

require 'modules.shortcut'

local INPUT_SOUGOU = 'com.sogou.inputmethod.sogou.pinyin'
local INPUT_US = 'com.apple.keylayout.US'

-- 搜狗拼音
local function sougou()
    hs.keycodes.currentSourceID(INPUT_SOUGOU)
end

-- US
local function us()
    hs.keycodes.currentSourceID(INPUT_US)
end


if (input_methods ~= nil) then
    hs.hotkey.bind(input_methods.us.prefix, input_methods.us.key, input_methods.us.message, us)
    hs.hotkey.bind(input_methods.sougou.prefix, input_methods.sougou.key, input_methods.sougou.message, sougou)
end
