require 'pp'

rock_paper_scissors_input = File.new('input.txt')

# # Part 1
# choice_weights = {
#   X: 1,
#   Y: 2,
#   Z: 3
# }

# strategy = {
#   A: {
#     X: 3,
#     Y: 6,
#     Z: 0
#   },
#   B: {
#     X: 0,
#     Y: 3,
#     Z: 6
#   },
#   C: {
#     X: 6,
#     Y: 0,
#     Z: 3
#   }
# }

# total = 0

# while (input = rock_paper_scissors_input.gets)
#   other_choice, my_choice = input.chomp.split(' ').map(&:to_sym)

#   current_round_total = choice_weights[my_choice] + strategy[other_choice][my_choice]

#   total += current_round_total
# end

# pp "Part 1: #{total}"

# ----------------------------------------------------------------------------
# Part 2
choice_weightss = {
  A: 1,
  B: 2,
  C: 3
}

win_lose_draw_points_awarded = {
  X: 0,
  Y: 1,
  Z: 2
}

strategyy = {
  A: {
    X: :C,
    Y: :A,
    Z: :B
  },
  B: {
    X: :A,
    Y: :B,
    Z: :C
  },
  C: {
    X: :B,
    Y: :C,
    Z: :A
  }
}

totall = 0

while (input = rock_paper_scissors_input.gets)
  input = rock_paper_scissors_input.gets
  other_choice, win_lose_strategy = input.chomp.split(' ').map(&:to_sym)

  my_choice = strategyy[other_choice][win_lose_strategy]

  choice_points_awarded = choice_weightss[my_choice]
  round_result_points_awarded = win_lose_draw_points_awarded[win_lose_strategy]

  totall += choice_points_awarded + round_result_points_awarded
end

puts "Part 2: #{totall}"
