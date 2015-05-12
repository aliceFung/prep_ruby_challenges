def is_prime?(number)
	start=number-1
	start.downto(2) do |factor|
		return false if number%factor==0
	end
	return true	
end

puts is_prime?(7)
puts is_prime?(14)