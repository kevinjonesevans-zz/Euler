# class Fixnum
#   def prime?
#     (2...self).each{|val| 
#       if self%val==0 
#         return false
#       end
#     }
#     return true
#   end
# end

require 'Prime'

t = Time.now
max = 0
x = ARGV[0].to_i
primes = Prime.first 10000
puts "Done Generating Prime Numbers..."
primes.each{|val| max=val if x%val==0}
puts "Maximum Prime Factor: #{max}"
puts "Time Elapsed: #{Time.now-t} seconds"
