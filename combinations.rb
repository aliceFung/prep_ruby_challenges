def combinations(array1, array2)
	combos=[]
	array1.each_index do |index|
		array2.each do |second|
			combos << array1[index]+second
		end
	end		
	print combos
end

combinations(["on","in"],["to","rope"])