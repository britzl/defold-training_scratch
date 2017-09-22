local M = {}


local levels = {
	[1] = {
		{ x = 100, y = 100 },
		{ x = 200, y = 200 },
		{ x = 300, y = 300 },
		{ x = 400, y = 400 },
		{ x = 500, y = 500 },
	},
	[2] = {
		{ x = 100, y = 100 },
		{ x = 200, y = 200 },
		{ x = 300, y = 300 },
		{ x = 400, y = 200 },
		{ x = 500, y = 100 },
	},
}


function M.create_pins(id, factory_url)
	local ids = {}
	for _,pin in pairs(levels[id]) do
		local id = factory.create(factory_url, vmath.vector3(pin.x, pin.y, 0))
		table.insert(ids, id)
	end
	return ids
end


return M