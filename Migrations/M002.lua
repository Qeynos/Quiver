Quiver_Migrations_M002 = function()
	local mstore = Quiver_Store.ModuleStore or {}
	local s = mstore[Quiver_Module_AutoShotTimer.Id] or {}
	-- Change colour to color
	-- Previous migration did this, but I forgot to rename the variable in the module
	if s.ColourShoot then s.ColorShoot = s.ColourShoot end
	if s.ColorReload then s.ColorReload = s.ColourReload end
	s.ColourShoot = nil
	s.ColourReload = nil
end
