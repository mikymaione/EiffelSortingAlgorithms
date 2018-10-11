note
	description: "The insertion sort algo."
	author: "[MAIONE MIKY]"
	date: "$Date$"
	revision: "$Revision$"

class INSERTION_SORT

feature

	print_it (A: ARRAY [INTEGER])
		do
			across A as e
			loop
				io.put_string(e.item.out + " ")
			end
		end

	sort (A: ARRAY [INTEGER]) -- Insertion sort
		local
			K, i, j: INTEGER
		do
			from
				j := 1
			until
				not (j <  A.count)
			loop
				K := A[j]
				i := j - 1

				from
				until
					not (i > 0 and A[i] > K)
				loop
					A[i + 1] := A[i]
					i := i - 1
				end

				A[i + 1] := K
				j := j + 1
			end
		end
end
