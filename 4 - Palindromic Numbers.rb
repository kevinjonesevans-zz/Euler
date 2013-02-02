class Fixnum
  def palindrome?
    string_self = self.to_s
    if self.even?
      firstHalf = string_self[0..(string_self.length-1)/2] 
    else
      firstHalf = string_self[0..(string_self.length-2)/2]
    end
    secondHalf = string_self[((string_self.length-1)/2)+1..string_self.length-1]
    #puts "First Half: #{firstHalf}"
    #puts "Second Half: #{secondHalf}"
    return true if firstHalf.eql? secondHalf.reverse 
    return false
  end
end

#puts 57875.palindrome?
max = 0
factors = []
nums = (100...999).to_a.reverse
nums.each{|item1| 
  nums.each{|item2|
    result = item1*item2
    #puts "Checking #{result}..."
    if result.palindrome? and result > max
      max = result
    end
  }
}
puts "Max Palindrome: #{max}"
