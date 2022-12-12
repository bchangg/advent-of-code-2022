# frozen_string_literal: true

require 'pp'

def encode(char)
  return nil unless char.match?(/[[:alpha:]]/)

  char.match?(/[a-z]/) ? char.ord - 96 : char.ord - 38
end

# input = File.new('input.txt')

# Part 1
# total = 0

# while (line = input.gets)
#   line = line.chomp
#   line_split_index = (line.size / 2) - 1
#   first_half = line.slice(0..line_split_index)
#   second_half = line.slice(line_split_index + 1..line.size)

#   first_half.split('').each do |char|
#     if second_half.include?(char)
#       total += encode(char)
#       break
#     end
#   end
# end

# puts total

# ------------------------------------------------------------------------------------

# Part 2
totall = 0

File.foreach('input.txt').each_slice(3) do |three_lines|
  three_lines.first.chomp.split('').each do |char|
    if three_lines[1].include?(char) && three_lines[2].include?(char)
      totall += encode(char)
      break
    end
  end
end

puts totall