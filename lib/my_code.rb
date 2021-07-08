def map(array)
  new_array = Array.new()
  
  array.length.times do |i|
    new_array[i] = yield(array[i])
  end
  
  new_array
end

def reduce(array, starting_value = 0)
  array.length.times do |i|
    starting_value = yield(array[i], starting_value)
  end
  
  starting_value.is_a?(Integer) ? starting_value : !!starting_value
end