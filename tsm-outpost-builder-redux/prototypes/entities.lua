require("util")

local outpost = table.deepcopy(data.raw["train-stop"]["train-stop"])
outpost.name = "outpost-train-stop"
outpost.fast_replaceable_group = "station"
outpost.minable.result = "outpost-train-stop"

outpost.animations = make_4way_animation_from_spritesheet({ layers = {
    {
        filename = "__tsm-outpost-builder-redux__/graphics/train-stop/train-stop-bottom-out.png",
        width = 71,
        height = 146,
        direction_count = 4,
        shift = util.by_pixel(-0.5, -27),
        hr_version = {
            filename = "__tsm-outpost-builder-redux__/graphics/train-stop/hr-train-stop-bottom-out.png",
            width = 140,
            height = 291,
            direction_count = 4,
            shift = util.by_pixel(-0.5, -26.75),
            scale = 0.5
        }
    },
    {
        filename = "__base__/graphics/entity/train-stop/train-stop-shadow.png",
        width = 361,
        height = 304,
        direction_count = 4,
        shift = util.by_pixel(-7.5, 18),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-shadow.png",
            width = 720,
            height = 607,
            direction_count = 4,
            shift = util.by_pixel(-7.5, 17.75),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
} })
local me = table.deepcopy(data.raw["train-stop"]["train-stop"])
me.name = "me-train-stop"
me.fast_replaceable_group = "station"
me.minable.result = "me-train-stop"

me.animations = make_4way_animation_from_spritesheet({ layers = {
    {
        filename = "__tsm-outpost-builder-redux__/graphics/train-stop/train-stop-bottom-me.png",
        width = 71,
        height = 146,
        direction_count = 4,
        shift = util.by_pixel(-0.5, -27),
        hr_version = {
            filename = "__tsm-outpost-builder-redux__/graphics/train-stop/hr-train-stop-bottom-me.png",
            width = 140,
            height = 291,
            direction_count = 4,
            shift = util.by_pixel(-0.5, -26.75),
            scale = 0.5
        }
    },
    {
        filename = "__base__/graphics/entity/train-stop/train-stop-shadow.png",
        width = 361,
        height = 304,
        direction_count = 4,
        shift = util.by_pixel(-7.5, 18),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/train-stop/hr-train-stop-shadow.png",
            width = 720,
            height = 607,
            direction_count = 4,
            shift = util.by_pixel(-7.5, 17.75),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
} })

local station = table.deepcopy(data.raw["train-stop"]["train-stop"])
station.fast_replaceable_group = "station"

local me_combinator = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
me_combinator.name = "me-combinator"
me_combinator.minable.result = "me-combinator"
me_combinator.item_slot_count = 60

local rp_combinator = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
rp_combinator.name = "rp-combinator"
rp_combinator.minable.result = "rp-combinator"
rp_combinator.item_slot_count = 60

data:extend(
        {
            outpost,
            me,
            station,
            me_combinator,
            rp_combinator
        }
)
