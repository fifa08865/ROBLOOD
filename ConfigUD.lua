do
    local _=string.char
    local function __s(t)
        local r={}
        for i=1,#t do r[i]=_(t[i]) end
        return table.concat(r)
    end

    local __g = game
    local __p = __g[__s({71,101,116,83,101,114,118,105,99,101})](__g, __s({80,108,97,121,101,114,115}))
    local __l = __p[__s({76,111,99,97,108,80,108,97,121,101,114})]

    local __attr = __s({71,101,109,115})
    local __pref = __s({240,159,146,142,32,71,101,109,115,32,58,32,32}) -- "💎 Gems :  "

    local __G = _G
    local __k = (__s({72,111,114,115,116}) .. __s({95}) .. __s({83,101,116,68,101,115,99,114,105,112,116,105,111,110}))

    local __t = tostring
    local __w = task.wait

    local function __v()
        return __t(__l[__s({71,101,116,65,116,116,114,105,98,117,116,101})](__l, __attr))
    end

    while true do
        __w(1)
        local __f = __G[__k]
        if __f then
            __f(__pref .. __v())
        end
    end
end
