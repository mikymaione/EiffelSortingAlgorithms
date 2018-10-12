note
	description: "Abstract class for sorting"
	author: "[MAIONE MIKY]"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ALGO_SORT [G -> COMPARABLE]

feature -- Basic function

	print_it (A: ARRAY [G])
		do
			across
				A as e
			loop
				io.put_string (e.item.out + " ")
			end
		end

	sort (A: ARRAY [G])
		deferred
		end

end
