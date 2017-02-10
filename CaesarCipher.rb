def   caesar_cipher(str, shift)
  shift.times do
    encrypted_str = ''
    str.each_char do |char|
      encrypted_str += increment_by_one_char(char)
      str = encrypted_str
    end
  end
 return str
end

def increment_by_one_char(char)
  new_char = char
  if /Z|z/.match(char)
    new_char = (char.ord - 25).chr
  elsif /\w/.match(char)
    new_char = (char.ord + 1).chr
  end
  return new_char
end


caesar_cipher("What a string!", 5)
