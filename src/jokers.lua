SMODS.Joker{ --All In
    key = "all_in",
    config = {
        extra = {
            HandPlayed = 0,
            HandLimit = 42,
            emult = 3
        }
    },
    atlas = 'Placeholder',
    pos = {
        x = 0,
        y = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.HandPlayed, card.ability.extra.HandLimit, card.ability.extra.emult}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (card.ability.extra.HandPlayed or 0) >= card.ability.extra.HandLimit then
                card.ability.extra.HandPlayed = (card.ability.extra.HandPlayed) + 1
                return {
                    e_mult = card.ability.extra.emult
                }
            else
                card.ability.extra.HandPlayed = (card.ability.extra.HandPlayed) + 1
            end
        end
    end
}