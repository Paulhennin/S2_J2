def caesar_cipher(string, n)
  words = string.split(//)
  current_numbers = []
  words.each do |word|
    if word.ord <= 122 && word.ord >= 97
      if (word.ord + n) > 122
        c = (word.ord + n) - 122
        c = c + 97
        current_numbers << c
      else
        current_numbers << word.ord + n
      end
    elsif word.ord >= 65 && word.ord <= 90
      if (word.ord + n) > 90
      c = (word.ord + n) - 90
      c = c + 65
      current_numbers << c
    else
        current_numbers << word.ord + n
    end
  else current_numbers << word.ord
  end
  end
    p words
    p current_numbers
    result = []

  current_numbers.each do |current_number|
    result << current_number.chr
  end
   return result.join("")
end
