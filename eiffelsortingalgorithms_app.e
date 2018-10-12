note
	description: "Project root class"

class
	EIFFELSORTINGALGORITHMS_APP

create
	make

feature {NONE} -- Initialization

	sort_with_insertion
		local
			insertion: INSERTION_SORT [INTEGER]
			test: ARRAY [INTEGER]
		do
			create test.make_empty
			test := <<5, 91, 13, 99, 7, 35, 23>>
			create insertion
			insertion.sort (test)
			insertion.print_it (test)
		end

	sort_with_mergesort_cormen
		local
			mergesort: MERGESORT_CORMEN [INTEGER]
			test: ARRAY [INTEGER]
			e: INTEGER
		do
			create test.make_empty
			test := <<5, 91, 13, 99, 7, 35, 23>>
			create mergesort.inizializza (e.max_value)
			mergesort.sort (test)
			mergesort.print_it (test)
		end

	make -- Run application
		do
			sort_with_mergesort_cormen
		end

end
