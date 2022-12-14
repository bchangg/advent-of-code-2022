# frozen_string_literal: true

input = File.new('input.txt')

total = 0
totall = 0

while (line = input.gets)
  line = line.chomp
  contained = false

  first, second = line.split(',')
  first_start, first_end = first.split('-').map(&:to_i)
  second_start, second_end = second.split('-').map(&:to_i)

  # Part 1
  if (first_start >= second_start && first_end <= second_end) || (second_start >= first_start && second_end <= first_end)
    total += 1
    contained = true
  end

  # -----------------------------------------------------------------------------
  # Part 2
  if contained
    totall += 1
  elsif first_end >= second_start && first_end <= second_end || first_start >= second_start && first_start <= second_end
    totall += 1
  end
end

puts total
puts totall
