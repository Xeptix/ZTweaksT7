-- Loaded by the Zombies gameplay HUD require list, after the common ZM HUD
-- constructor exists and before map-specific HUD constructors are created.

require( "ui.ztweaks.ztweakssettings" )

local Z = CoD.ZTweaksSettings
if Z.autoRestartMenuFactoryTransport ~= "hudMenuProbe2" then
	Z.autoRestartMenuFactoryTransport = "hudMenuProbe2"
	Z.autoRestartMenuFactoryHooked = true
	local NewForUIEditor = CoD.Menu.NewForUIEditor
	CoD.Menu.NewForUIEditor = function ( name )
		local menu = NewForUIEditor( name )
		if name == "T7Hud_ZM" or string.sub( name or "", 1, 8 ) == "T7Hud_zm" then
			Z.ListenEndGameAction( menu, Engine.GetPrimaryController() )
			Z.ListenCharacterProbe( menu, Engine.GetPrimaryController() )
		end
		return menu
	end
end
