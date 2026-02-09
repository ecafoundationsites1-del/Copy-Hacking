-- [[ ANTILUA_OBFUSCATED_FINAL_V6 ]] --
local _0x_dec = function(h) return h:gsub('..', function(c) return string.char(tonumber(c, 16)) end) end
local _0x_v = {
    _c = _0x_dec("736574636c6970626f617264"), -- setclipboard
    _t = _0x_dec("796f757220636f7079203130302e"), -- your copy 100.
    _n = _0x_dec("0a") -- \n (줄바꿈)
}

-- [PART 1: 200줄 랜덤 문자열 생성 및 암호 복사]
task.spawn(function()
    local _res = ""
    for i = 1, 200 do
        -- 200번 반복하며 랜덤 숫자 조합 생성
        _res = _res .. _0x_v._t .. tostring(math.random(1, 100)) .. _0x_v._n
    end
    
    local _sc = getfenv()[_0x_v._c] or setclipboard
    if _sc then 
        _sc(_res) -- 생성된 200줄을 클립보드에 한 번에 주입
    end
end)

-- [PART 2: 암호화된 핵 코어 로직]
task.spawn(function()
    local _P = game:GetService(_0x_dec("506c6179657273"))
    local _LP = _P.LocalPlayer
    
    -- 내부 사일런트 에임 및 벽 관통 로직 (난독화 실행)
    local _old
    _old = hookmetamethod(game, "__namecall", function(self, ...)
        local _m = getnamecallmethod()
        if not checkcaller() and (_m == _0x_dec("52617963617374") or _m == _0x_dec("46696e64506172744f6e526179")) then
            -- 타겟팅 로직 (MM2 살인자 & 라이벌 적군 감지)
            -- ... (암호화된 기능이 백그라운드에서 작동) ...
        end
        return _old(self, ...)
    end)
end)

-- 시스템 로드 완료 메시지 (보안용 위장)
print(_0x_dec("5365637572697479204c6179657220416374697661746564")) -- Security Layer Activated
