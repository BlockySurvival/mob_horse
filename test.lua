if not minetest.global_exists('test') then return end
if test.active then return end

local describe = test.describe
local it = test.it
local stub = test.stub
local assert_equal = test.assert.equal

describe("Horse Mob", function ()
	describe("Horse", function ()
		local original_spawn_specific = mobs.spawn_specific
		local stub_spawn_specific = stub()
		test.before_all(function ()
			mobs.spawn_specific = stub_spawn_specific.call
		end)
		test.after_all(function ()
			mobs.spawn_specific = original_spawn_specific
		end)
		it("calls the main mob spawn registration function with the same values as before config was added", function ()
			dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/init.lua")
			-- The original call before config was added, testing for consistency with config defaults
			stub_spawn_specific.called_with(mobs, "mob_horse:horse", { "default:dirt_with_grass", "ethereal:dry_dirt" }, { "air" }, 14, 15, 60, 16000, 1, 10, 31000, true)
		end)
	end)
end)

test.execute(true)