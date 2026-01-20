def caesar_cipher(msg, num)
  alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

  # Split msg into an array
  characters = msg.split("")

  # If character is a letter
  # Then convert character to ASCII using .ord
  # Else continue
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
  # Join characters into a string
  # TODO: Loop from z to a
end

caesar_cipher("Hello world!", 1)