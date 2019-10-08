
def is_multiple_of_3_or_5?(number)
  if number % 3 == 0 || number % 5 == 0
    return true
  else
    return false
end
end

def sum_of_3_or_5_multiples? (final_number)
current_number = 0
final_sum = 0
  if (final_number.is_a? Integer) && final_number >= 0
    while current_number < final_number
      if is_multiple_of_3_or_5?(current_number)
        final_sum += current_number
      end
        current_number += 1
    end
    return final_sum
    else
  return "It's not what we needed."
  end
end
