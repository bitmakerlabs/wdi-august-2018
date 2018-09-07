# Problem: Get the total sum of a list of numbers
# 1 2 5 11 1

# high level plan
# go through each number in the list adding them one by one to a total
# display the total

# pseudocode plan
# numbers = [1,2,5,11,1]
# total = 0
#
# for num in numbers do
#   total = total + num
# end
#
# print total


numbers = [1,2,5,11,1]
total = 0

numbers.each do |num|
  total = total + num
end

puts total





