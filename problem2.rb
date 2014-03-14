# credit to Darrel Hawley of Atomic Object for showing me this solution on a terrible phone interview
array = [1, 2]
sum = 0

until array[0] > 4000000 do
  sum += array[0] if array[0] % 2 == 0
  previous_value = array[0]  #store previous value
  array[0] = array[1]        #copy current to previous
  array[1] += previous_value #add previous to current to find new
end

puts sum

# right answer on first try woo!
