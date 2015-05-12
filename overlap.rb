#two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers. 
def overlap(rect1, rect2)
    #between(min,max)
    #compare x
    if (rect2[0][0]).between?(rect1[0][0],rect1[1][0]) || (rect2[1][0]).between?(rect1[0][0],rect1[1][0])
        if (rect2[0][1]).between?(rect1[0][1],rect1[1][1]) || (rect2[1][1]).between?(rect1[0][1],rect1[1][1])
            return true
        end
	else return false
	end
end

puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) #true
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) #false

#shared border case needs fixing
##not working yet; 12AM EST 5.12/15