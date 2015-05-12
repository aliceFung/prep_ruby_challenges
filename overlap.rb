#two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers. 
def overlap(rect1, rect2)
    #between(min,max)
    # 4 scenarios for overlap: assume rect1 is not of bordering 0, rect2 can overlap through each of its corners
    # sharing borders does not count as overlap
    # so for each case, rect2 element has to have at least one corner (x,y) in between the range of rect1 but not equal to the border
    # testing overlap for along x-axis
    if ( (rect2[0][0]).between?(rect1[0][0],rect1[1][0]) && ((rect2[0][0])!=(rect1[0][0])) && ((rect2[0][0])!=(rect1[1][0])) ) || 
        ( (rect2[1][0]).between?(rect1[0][0],rect1[1][0]) && ((rect2[1][0])!=(rect1[0][0])) && ((rect2[1][0])!=(rect1[1][0])) )
        #testing overlap along y-axis
        if ((rect2[0][1]).between?(rect1[0][1],rect1[1][1]) && ((rect2[0][1])!=(rect1[0][1])) && ((rect2[0][1])!=rect1[1][1])) || 
            ((rect2[1][1]).between?(rect1[0][1],rect1[1][1]) && ((rect2[1][1])!=(rect1[0][1])) && ((rect2[1][1])!=(rect1[1][1])))
            return true
        end
	else return false
	end
end

#puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) #true
#puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) #false
#puts overlap( [ [1,3],[3,5] ], [ [2,1],[4,4] ] )

#5/12/15: shared border case with overlap needs fixing #puts overlap( [ [1,3],[3,4] ], [ [2,1],[4,4] ] )
