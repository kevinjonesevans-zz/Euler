square, sum = 0, 0
(1..100).each{|num|
  square += num * num
  sum += num
}
puts "Sum of Squares: #{square}"
puts "Square of Sums: #{sum * sum}"
puts "Difference #{(sum * sum) - square}"