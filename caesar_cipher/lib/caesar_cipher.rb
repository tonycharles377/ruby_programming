# frozen_string_literal: true

# Implement a caesar cipher that takes in a string and the shift factor
# and then outputs the modified string

def caesar_cipher(string, right_shift)
  encoded = ''

  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      ascii_offset = char.match(/[a-z]/) ? 97 : 65
      encoded << (ascii_offset + (char.ord - ascii_offset + right_shift) % 26).chr
    else
      encoded << char
    end
  end
  puts encoded
  encoded
end

caesar_cipher('What a string!', 5)