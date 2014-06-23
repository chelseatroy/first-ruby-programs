numbers = [1,2,45,3,67,8,0,2,78,345,7,6,8]
oddsum = 0
evensum = 0

numbers.each do |number|
  if number.even?
    evensum += number
  else 
    oddsum += number
  end
end

puts evensum, oddsum