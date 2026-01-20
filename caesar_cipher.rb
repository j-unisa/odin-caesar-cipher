def caesar_cipher(msg, num)
  alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

  # Split msg into an array
  characters = msg.split("")

  # If character is a letter
  # Then convert character to ASCII using .ord
  # Else return character
  ascii__converted_characters = characters.map do |char|
    if alpha.include?(char)
      char.ord
    else
      char
    end
  end

  # If element is a number
  # Then add num to converted character
  # And convert back to character using .chr
  # Else return character
  encrypted_characters = ascii__converted_characters.map do |char|
    if char.is_a?(Integer)
      # Loop from z to a
      if ((char + num) > 90) && (char.chr == char.chr.upcase) ||
        ((char + num > 122)) && (char.chr == char.chr.downcase)
        char -= 26 - num
        char.chr
      else
        char += num
        char.chr
      end
    else
      char
    end
  end
  
  # Join characters into a string
  encrypted_characters.join
end

caesar_cipher("Hello world Zz!", 1)