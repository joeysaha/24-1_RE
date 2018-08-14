seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

answered = false
seats.each do |r|
  r.each_with_index do |c, index|
    if c == nil
      puts "Row #{seats.index(r)+1} seat #{index+1} is free."
      if answered == false
        puts "Do you want to sit there?"
        answer = gets.chomp.to_s.downcase
        if answer == "y"
          puts "What is your name?"
          name = gets.chomp.to_s
          r[index] = name
          answered = true
          puts "Perfect, thanks!"
          break
        else
          r[index] = "empty seat"
        end
        # r[index] = "empty seat"
      end
      r[index] = "empty seat"
    end
    # r[index] = "empty seat"
  end
end
# can't fill the next empty seat with string "empty seat" after filling
puts seats
# seats.each do |r|
#   r.each_index do |c|
#     # puts r.values_at(c)
#     if r.values_at(c) == nil
#       puts "Row #{seats.index(r)+1} seat #{c+1} is free."
#       puts c
#
#     else
#       puts "Nothing here at #{c}"
#     end
#   end
# end
