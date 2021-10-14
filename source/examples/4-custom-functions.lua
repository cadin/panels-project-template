-- CUSTOM BEHAVIOR FOR PANEL 2 

local layerPosition = 200

-- render is called every frame
-- render is responsible for drawing the entire panel
local function renderPanel2(panel, offset)
	local crankChange = playdate.getCrankChange() 
	layerPosition = layerPosition - (crankChange / 10)

	-- our panel only has one layer stored in the panel.layers table
	-- panel.layers[1].img:draw(200, layerPosition)
	playdate.graphics.drawRect(200, layerPosition, 10, 10)
end

-- advance is called every frame
local function advancePanel2()
	if layerPosition < 0 then 
		return true -- advance to next panel
	else
		return false -- stay on this panel
	end
end

-- reset is called when the panel leaves the screen
local function resetPanel2()
	-- reset the layer position 
	-- in case the user navigates back to this panel
	layerPosition = 200
end


-- COMIC DATA TABLE

comicData = {
	{ -- sequence 1
		title = "Ex 4: Chapter 1",
		scrollType = Panels.ScrollType.AUTO,
		
		panels = {
			{ -- panel 1 (normal panel)
				advanceControl = Panels.Input.A,
				layers = {
					{ text = "Press A to Start...", x = 50, y = 100, 
						effect = { type = Panels.Effect.TYPE_ON, duration = 500 }
					}
			   }
			},
			{ -- panel 2 (custom render)
				renderFunction = renderPanel2,
				advanceFunction = advancePanel2,
				resetFunction = resetPanel2,
				layers = {

				}
			},
			{ -- panel 3 (normal panel)
				layers = {
					{ text = "GAME OVER", x = 50, y = 100,  
						effect = { type = Panels.Effect.TYPE_ON, duration = 300 }
					}
				}
			}

		}
	}
}