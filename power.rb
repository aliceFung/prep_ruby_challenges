#assume exponent is positive integer
def power(base, exponent)
    result=1
    exponent.times do
        result*=base
    end
    return result
end

puts power(3,4)