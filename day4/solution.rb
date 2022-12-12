input = File.new('input.txt')

total = 0

while (line = input.gets)
  line = line.chomp
  first, second = line.split(',')
  first_start, first_end = first.split('-')
  second_start, second_end = second.split('-')

  puts '-----------------------'
  pp [first_start, first_end]
  pp [second_start, second_end]

  if first_start >= second_start
    if first_end <= second_end
      total += 1
      puts 'first is in second'
    end
  elsif second_start >= first_start
    if second_end <= first_end
      total += 1
      puts 'second is in first'
    end
  end
end

puts total
