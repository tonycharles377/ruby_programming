def caesar_cipher(string, num)
  encoded = ""

  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      ascii_offset = char.match(/[a-z]/)? 97 : 65
      encoded << (ascii_offset + (char.ord - ascii_offset + num) % 26).chr
    else
      encoded << char
    end
  end
  puts encoded
  return encoded
end

caesar_cipher("What a string!", 5)
