SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
}):register()

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end

function SMODS.current_mod.reset_game_globals(run_start)
      local jokerPool = {}
      for k, v in pairs(G.P_CENTERS) do
          if v.set == 'Joker' then
              if (not v.mod) then
                  G.GAME.banned_keys[k] = true
              end
          end
      end
  end