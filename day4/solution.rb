input = File.new('input.txt')

total = 0

while (line = input.gets)
  line = line.chomp
  first, second = line.split(',')
  first_start, first_end = first.split('-').map(&:to_i)
  second_start, second_end = second.split('-').map(&:to_i)

  if first_start == second_start
    total += 1 if first_end <= second_end || second_end <= first_end
  elsif first_start > second_start
    total += 1 if first_end <= second_end
  elsif second_start > first_start
    total += 1 if second_end <= first_end
  end
end

puts total
