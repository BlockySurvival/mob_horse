--[[ DEFAULTS: --
spawn_on                   = {"group:soil", "group:stone"},
spawn_near                 = {"air"},
spawn_min_light            = 0,
spawn_max_light            = 15,
spawn_interval             = 30,
spawn_chance               = 5000,
spawn_active_object_count  = 1,
spawn_min_height           = -31000,
spawn_max_height           = 31000,
]]

local config = {}

config.spawn_enabled_horse = true
config.spawn_on_horse = {"default:dirt_with_grass", "ethereal:dry_dirt"}
config.spawn_near_horse = nil
config.spawn_min_light_horse = 14
config.spawn_max_light_horse = 0
config.spawn_interval_horse = 60
config.spawn_chance_horse = 16000
config.spawn_active_object_count_horse = nil
config.spawn_min_height_horse = 10
config.spawn_max_height_horse = 31000

global_mob_horse = config
