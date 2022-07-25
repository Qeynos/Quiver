-- TODO these aren't persistent, so make a constants file or something
QUIVER_SIZE = {
	Border = 12,
	Gap = 8,
	Icon = 18,
}

-- Might make more sense to use the global table instead of a top level file
Quiver_Store_Restore = function()
	Quiver_Store = Quiver_Store or {}
	Quiver_Store.IsLockedFrames = Quiver_Store.IsLockedFrames == true
	Quiver_Store.ModuleEnabled = Quiver_Store.ModuleEnabled or {}
	Quiver_Store.ModuleStore = Quiver_Store.ModuleStore or {}
	Quiver_Store.FrameMeta = Quiver_Store.FrameMeta or {}
end
