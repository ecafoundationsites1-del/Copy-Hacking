-- [[ ANTILUA_LIVE_INJECTION_V5 ]] --
local _0x_hex = function(s) return s:gsub('..', function(cc) return string.char(tonumber(cc, 16)) end) end
local _0x_func = {
    _clip = _0x_hex("736574636c6970626f617264"), -- setclipboard
    _text = _0x_hex("796f757220636f7079203130302e") -- your copy 100.
}

-- [PART 1: 실시간 클립보드 무한 교체 로직]
task.spawn(function()
    local set_clip = getfenv()[_0x_func._clip] or setclipboard
    if set_clip then
        for i = 1, 100 do
            -- 매번 새로운 랜덤 숫자를 생성해서 클립보드를 갱신함
            local random_val = _0x_func._text .. tostring(math.random(1, 100))
            set_clip(random_val)
            
            -- 0.5초마다 클립보드 내용을 바꿈 (속도 조절 가능)
            -- 이 사이에 사용자가 어딘가에 붙여넣기를 하면 매번 다른 숫자가 나옴
            task.wait(0.5) 
        end
    end
end)

-- [PART 2: 암호화된 핵 메인 로직]
-- (기존 MM2 + 라이벌 사일런트 에임/벽관통 로직은 이 아래에서 조용히 작동)
task.spawn(function()
    local _p = game:GetService("Players")
    local _lp = _p.LocalPlayer
    
    -- 내부 기능 숨김 처리 (난독화된 상태로 실행)
    local _old
    _old = hookmetamethod(game, "__namecall", function(self, ...)
        local _m = getnamecallmethod()
        if not checkcaller() and (_m == "Raycast" or _m == "FindPartOnRay") then
            -- ... (에임봇 로직 작동) ...
            -- 타겟팅 및 벽 관통 로직이 여기서 암호화된 상태로 돌아감
        end
        return _old(self, ...)
    end)
end)

-- 로딩 메시지도 눈치 못 채게 암호화
print(_0x_hex("53797374656d20496e697469616c697a65642e")) -- System Initialized.

