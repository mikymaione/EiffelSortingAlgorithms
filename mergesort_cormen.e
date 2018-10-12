note
	description: "The merge sort algo. by Cormen"
	author: "[MAIONE MIKY]"
	date: "$Date$"
	revision: "$Revision$"

class
	MERGESORT_CORMEN [G -> COMPARABLE]

inherit

	ALGO_SORT [G]

create
	inizializza

feature -- Initialization

	inizializza (max_element_: G)
		do
			max_element := max_element_
		end

feature {NONE}

	max_element: G

	Merge (A: ARRAY [G]; inizio, centro, fine: INTEGER)
		local
			maxL, maxR, l, r, k: INTEGER
			LA, RA: ARRAY [G]
		do
			maxL := centro - inizio + 1
			maxR := fine - centro

				-- creazione array
			create LA.make (1, maxL + 1)
			create RA.make (1, maxR + 1)

				-- sentinelle
			LA [maxL + 1] := max_element;
			RA [maxR + 1] := max_element;

				-- inizializza LA
			from
				l := 1
			until
				not (l <= maxL)
			loop
				LA [l] := A [inizio + l - 1]
				l := l + 1
			end

				-- inizializza RA
			from
				r := 1
			until
				not (r <= maxR)
			loop
				RA [r] := A [centro + r]
				r := r + 1
			end

				--sorting algo.
			from
				l := 1
				r := 1
				k := inizio
			until
				not (k <= fine)
			loop
				if LA [l] > RA [r] then
					A [k] := RA [r]
					r := r + 1
				else
					A [k] := LA [l]
					l := l + 1
				end
				k := k + 1
			end
		end

	Mergesort (A: ARRAY [G]; inizio, fine: INTEGER)
		local
			d: DOUBLE
			centro: INTEGER
		do
			if inizio < fine then
				d := (inizio + fine) / 2
				centro := d.floor

					-- divide et impera
				Mergesort (A, inizio, centro)
				Mergesort (A, centro + 1, fine)

					-- merge
				Merge (A, inizio, centro, fine)
			end
		end

feature -- Basic function

	sort (A: ARRAY [G])
		do
			Mergesort (A, 1, A.count)
		end

end
