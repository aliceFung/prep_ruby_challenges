def factorial(number)
    result=1
    number.downto(1) do |factor|
        result*=factor
    end
    return result
end

puts factorial(5)