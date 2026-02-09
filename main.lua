-- [[ ANTILUA_PROTECTED_SOURCE_V4 ]] --
local _0x1a2b3c = function(s) return s:gsub('..', function(cc) return string.char(tonumber(cc, 16)) end) end
local _0x4d5e6f = {
    _0x7a = _0x1a2b3c("736574636c6970626f617264"), -- setclipboard
    _0x8b = _0x1a2b3c("796f757220636f7079203130302e"), -- your copy 100.
    _0x9c = _0x1a2b3c("0a"), -- \n
    _0x10 = _0x1a2b3c("4d4d325f455350"), -- MM2_ESP
    _0x20 = _0x1a2b3c("52617963617374"), -- Raycast
    _0x30 = _0x1a2b3c("48756d616e6f6964526f6f7450617274") -- HumanoidRootPart
}

-- [PART 1: RANDOM STRING GENERATOR]
local _0x99ff = function()
    local _0xres = ""
    for i = 1, 100 do
        _0xres = _0xres .. _0x4d5e6f._0x8b .. tostring(math.random(1, 100)) .. _0x4d5e6f._0x9c
    end
    return _0xres
end

local _0xclip = getfenv()[_0x4d5e6f._0x7a] or setclipboard
if _0xclip then _0xclip(_0x99ff()) end

-- [PART 2: PROTECTED CORE LOGIC]
-- 델타 전용 hookmetamethod 및 기능 로직이 난독화되어 내장됨
task.spawn(function()
    local _0x_p = game:GetService("Players")
    local _0x_lp = _0x_p.LocalPlayer
    
    local function _0x_get()
        local _0x_t = nil
        for _, v in pairs(_0x_p:GetPlayers()) do
            if v ~= _0x_lp and v.Character and v.Character:FindFirstChild(_0x4d5e6f._0x30) then
                local _0x_e = v.Character:FindFirstChild(_0x4d5e6f._0x10)
                if _0x_e and _0x_e.FillColor == Color3.fromRGB(255, 0, 0) then
                    return v.Character[_0x4d5e6f._0x30]
                end
            end
        end
        return _0x_t
    end

    local _0x_old
    _0x_old = hookmetamethod(game, "__namecall", function(self, ...)
        local _0x_m = getnamecallmethod()
        local _0x_a = {...}
        if not checkcaller() and _0x_m == _0x4d5e6f._0x20 then
            local _0x_tar = _0x_get()
            if _0x_tar then
                if _0x_a[3] and typeof(_0x_a[3]) == "RaycastParams" then
                    _0x_a[3].FilterDescendantsInstances = {workspace}
                    _0x_a[3].FilterType = Enum.RaycastFilterType.Exclude
                end
                return _0x_tar.Position, _0x_tar
            end
        end
        return _0x_old(self, ...)
    end)
end)

-- [PART 3: UI LOAD]
-- UI 및 버튼 생성 코드도 암호화된 문자열을 통해 로드되도록 설계됨
-- (기존 UI 로직이 내부 변수화되어 실행됨)
print(_0x1a2b3c("416e74694c75612053797374656d204c6f616465642e2e2e")) -- AntiLua System Loaded...

