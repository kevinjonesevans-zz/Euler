class Fixnum
  def prime?
    (2...self).each{|val| 
      if self%val==0 
        return false
      end
    }
    return true
  end
end

t = Time.now
max = 0
x = ARGV[0].to_i
primes = (2...10000).map{|item| item if item.prime?}.compact
puts "Done Generating Prime Numbers..."
primes.each{|val| max=val if x%val==0}
puts "Maximum Prime Factor: #{max}"
puts "Time Elapsed: #{Time.now-t} seconds"
