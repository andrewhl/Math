# Calculate sample variance

def calculate_sample_mean(array)
  sample_mean = array.inject(:+) / array.length.to_f
  puts "Sample mean: #{sample_mean}"
  sample_mean
end

def calculate_sample_variance(array)
  mean = calculate_sample_mean(array)
  variance = 0
  array.each do |number|
    number = (number - mean) ** 2
    variance += number
  end
  return variance / (array.length.to_f - 1)
end
def calculate_population_variance(array)
  mean = calculate_sample_mean(array)
  variance = 0
  array.each do |number|
    number = (number - mean) ** 2
    variance += number
  end
  return variance / (array.length.to_f)
end

puts "Press 1 for population variance, 2 for sample variance"
type_of_variance = gets.to_i
puts "Enter a comma-separated list of numbers, e.g.: 1,2,5,6,8"
nums = gets.split(',').map(&:chomp).map(&:to_i)

if type_of_variance == 1
  puts calculate_population_variance(nums)
else
  puts calculate_sample_variance(nums)
end