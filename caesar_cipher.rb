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
      char += num
      char.chr
    else
      char
    end
  end
  
  # Join characters into a string
  encrypted_characters.join

  # TODO: Loop from z to a
end

caesar_cipher("Hello world!", 1)