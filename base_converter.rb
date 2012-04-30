# Base number system calculator
# Base n = n^0, n^1, n^2, n^3
# Accept input: num
# 

# Take 15 as input, from base 10, convert to base 2

def convert_base(number, base)
  
  exponents = []
  n = 0 # Exponent / number position

  # Find the appropriate exponent size larger than the number 
  while number != 0
    # puts "Current top number: #{number}"
    # puts "Current exponent value: #{n}"
    running_total = 0
    if number < base ** n
      # puts "Base ** n: #{base ** n}"   
      # puts "If loop current number: #{number}"
      running_total += base ** (n-1)
      # puts "If loop running_total: #{running_total}"
      number = number - running_total
      # puts "If loop number after subtraction: #{number}"
      if exponents[n-1].nil? then exponents[n-1] = 1 else exponents[n-1] += 1 end
      n = 0
    else
      n += 1
    end
  end

  exponents.inspect

end

puts convert_base(29, 3)