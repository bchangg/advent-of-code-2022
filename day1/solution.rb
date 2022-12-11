elves = {}
elfCounter = 1
currentCalorieSum = 0

input = File.new('input.txt')

while (value = input.gets)
  if !value.chomp.empty?
    currentCalorieSum += value.to_i
  else
    elves[elfCounter] = currentCalorieSum
    elfCounter += 1
    currentCalorieSum = 0
  end
end

puts elves.sort_by{|k, v| -v}[0..2].to_h.sum{|k, v| v}
