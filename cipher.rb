#ASCII CODES: Uppercase Z = 90 / A = 65 , Lowercase z = 122 / a = 97, space = 32
def caeser_cipher (string, offset)
  code_array = string.codepoints
  code_array_offset = code_array.map {|code| 
  if code < 65 || code > 122 || code > 90 && code <97 #doesn't continue if outside number range
    code
  elsif code + offset > 122 #loops past z if needed
    remainder = 123 - code
    97 + offset - remainder
  elsif code + offset > 90 && code <= 90 #loops past Z if needed
    remainder = 91 - code
    65 + offset - remainder
  else 
    code + offset
  end
  }
  puts code_array_offset.map {|code| code.chr}.join("")
end

caeser_cipher("What a string!", 5)