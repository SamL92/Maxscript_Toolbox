(
	local sel = selection as array
	local mods = #()
	local chamferMods = #()

	for obj in sel do (join mods obj.modifiers)
	for m in mods where classof m == Chamfer do (appendIfUnique chamferMods m)
	for chamf in chamferMods do 
	(
		chamf.SmoothType = 1
		chamf.smoothtoadjacent = on
	)
)
