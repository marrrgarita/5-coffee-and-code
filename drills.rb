def create_phone_number(numbers)
  area_code = numbers.first(3)
  start = numbers[3..5]
  last = numbers.last(4)
  puts "(#{area_code.join("")}) #{start.join("")}-#{last.join}"
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
create_phone_number(numbers)


def valid_phone_number(number)
  if number.length != 14
    return false
  elsif number[0] != "(" || number[4] != ")" || number[5] != " " || number[9] != "-"
    return false
  else
    puts "valid"
  end
end


def luck_check(ticket)
  half_point = (ticket.length)/2
  ticket_numbers = ticket.chars

  ticket_numbers.map! { |num| num.to_i }

  left_side = ticket_numbers.first(half_point)
  right_side = ticket_numbers.last(half_point)

  left_side_total = 0
  left_side.each { |x| left_side_total += x }

  right_side_total = 0
  right_side.each { |x| right_side_total += x }

  if left_side_total == right_side_total
    return true
  else
    return false
  end
end
