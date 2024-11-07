# ASCII_CODES Uppercase Z = 90 / A = 65 , Lowercase z = 122 / a = 97, space = 32

def caeser_cipher(string, offset)
  code_array_offset = string.codepoints.map do |code|
    if code < 65 || code > 122 || (code > 90 && code < 97) # doesn't continue if outside number range
      code
    elsif code + offset > 122 # loops past z if needed
      97 + offset - (123 - code)
    elsif code + offset > 90 && code <= 90 # loops past Z if needed
      65 + offset - (91 - code)
    else
      code + offset
    end
  end
  puts code_array_offset.map(&:chr).join('')
end

caeser_cipher('What a string!', 5)
