note
	description: "Project root class"

class
	EIFFELSORTINGALGORITHMS_APP

create
	make

feature {NONE} -- Initialization

	make
			-- Run application
		local
			insertion: INSERTION_SORT
			test: ARRAY [INTEGER]
		do
			create test.make_empty
			test := <<5, 91, 13, 99, 7, 35>>

			create insertion
			insertion.sort (test)
			insertion.print_it (test)
		end

end
