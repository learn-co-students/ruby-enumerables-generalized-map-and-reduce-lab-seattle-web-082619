def map(array)
  new_arr = []
  array.each do |ele|
    new_arr.push(ele * -1)
  end
  yield
end

map() do
  |innards|
  return new_arr
end
