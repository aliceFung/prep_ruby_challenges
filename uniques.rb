#unique elements of array without using uniq

def uniques(array)
    unique_array=[]
    array.each do |element|
        unique_array.each { |uniq| 
            if uniq==element
                @copy = true
                break
            else
                @copy = false
            end
            }
        unique_array << element unless @copy
    end
    print unique_array
end 

#uniques( [ 1, 1,1,1,4, 2, 7, 3, 1, 2, 8,1] )

#uniques([1,5,"frog", 2,1,3,"frog"])
