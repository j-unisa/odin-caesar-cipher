def caesar_cipher(msg, num)

  # Split message into an array
  characters = msg.split("")

  ascii_converted_characters = convert_to_ascii(characters)

  encrypted_characters = encrypt_characters(ascii_converted_characters, num)
  
  encrypted_characters.join
end

def convert_to_ascii(arr)
  alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

  arr.map do |char|
    # For letters
    if alpha.include?(char)
      char.ord
    # For non-alpha characters
    else
      char
    end
  end
end

def encrypt_characters(arr, num)
  arr.map do |char|
    # For characters that need to be encrypted
    if char.is_a?(Integer)
      # Wrap from Z/z to A/a
      if ((char + num) > 90) && (char.chr == char.chr.upcase) ||
        ((char + num > 122)) && (char.chr == char.chr.downcase)
        char -= 26 - num
        char.chr
      # No wrapping needed
      else
        char += num
        char.chr
      end
    # For characters that don't need to be encrypted
    else
      char
    end
  end
end
