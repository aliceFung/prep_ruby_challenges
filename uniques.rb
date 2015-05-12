#unique elements of array without using uniq

def uniques(array)
    unique_array=[]
    copy = false
    array.each do |element|
        unique_array.each { |uniq| 
            if uniq==element
                copy = true 
            else
                copy = false
            end
            }
        unique_array << element unless copy
    end
    print unique_array
end 

uniques([1,5,"frog", 2,1,3,"frog"])
#not working yet; 12AM EST 5.12/15