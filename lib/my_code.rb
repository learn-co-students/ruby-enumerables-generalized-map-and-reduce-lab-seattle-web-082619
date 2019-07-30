def map(array)
  new = []
  i = 0
  while i < array.length do 
    new.push(yield(array[i]))
    i+= 1 
  end # loop end 
  return new  # returning new array 
end #end for the method 


def reduce(source_array, starting_point=nil)
  i = 0
  if (starting_point) # meaning that by default it exits 
    accumulator = starting_point #accumulator is equal to that point 
    i = 0 #setting i equal to the zeroth postion 
  else  
    accumulator = source_array[0] #else if the starting point does not exist, start at the arrays zeoth position 
    i = 1  # we dont want to add the zeroth position to itself 
  end  # end if else 
  while i < source_array.length do
    accumulator = yield(accumulator, source_array[i]) #saves all values to accumulator 
  i+=1  
  end  #end of the while loop  
  return accumulator
end 

 
#reduce accepts source array and starting point. if no sp, starts at first item in array 
#if we do get a starting point, will be the beggging part 
