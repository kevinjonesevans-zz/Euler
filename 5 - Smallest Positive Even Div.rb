(1..1000000000).each{|num|
  evenDiv = true  
  (1..20).each{|num2|
    #puts "#{num} #{num2}"
    if not num%num2 == 0
      evenDiv = false
      break    
    end
  }
  if evenDiv
    puts "#{num}"
    exit
  end
}