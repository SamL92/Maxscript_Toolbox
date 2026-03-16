(
	/*
	  Select_All_Railclone_Base_Objects

	  VERSION: 1.0

	  DATE: 16/03/2026

	  ABOUT:
	  This script selects the base objects of all currently selected RailClone objects.

	  CREATED BY:
		Sam Large

	  CHANGELOG
	  v1.0 16/03/2026 by Sam Large
	  -script created
	
	*/
	
	--Variables
	local sel = selection as array
	local RCObjects = #()
	local RCBaseObjects = #()
	local UniqueObjects = #()
	
	
	function main = (
		for i in sel where classof i == RailClone_Pro do
		(
			appendIfUnique RCObjects i
		)
		if RCObjects.count != 0 then
		(
			for RC in RCObjects do
			(
				join RCBaseObjects RC.banode
			)
			
			for o in RCBaseObjects do
			(
				appendIfUnique UniqueObjects o
			)
			
			Select UniqueObjects
		)
		else (messageBox "No Railclone objects are selected!")
	)
	
	main()
)
