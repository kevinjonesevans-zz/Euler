number=1
previous=0
sum=0
while number<4000000
  tmp = number
  number = number + previous
  previous = tmp
  sum+=number if number.even?
  puts "Previous:#{previous}, Number:#{number}, Sum:#{sum}"
end
puts "Grand Total:#{sum}"
