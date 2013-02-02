sum=0
(1...1000).each{|val| sum+=val if val%3==0 or val%5==0}
puts sum
