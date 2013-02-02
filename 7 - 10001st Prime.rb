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

primes = []
num = 2

while primes.size < 10001
  primes << num
  num += 1
  until num.prime?
    num += 1
  end
end

puts primes