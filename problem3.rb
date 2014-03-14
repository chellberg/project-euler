n = 600851475143
@divisor = 2
@top = n

# until top == divisor do
#   until (top % divisor == 0 && top != divisor) || (top == divisor) do
#     divisor += 1
#   end
#   top /= divisor unless top == divisor
#   divisor = 2
# end

# puts top


def find_next_even_divisor
  until @top % @divisor == 0 && @top != @divisor do
    @divisor += 1
    if @divisor == @top
      puts "SUCCESS AND THE ANSWER IS #{@top}" and return
    end
  end

  @divisor
end

while true do
  @divisor = find_next_even_divisor
  return if @divisor == @top

  @top /= @divisor
  @divisor = 2
end


