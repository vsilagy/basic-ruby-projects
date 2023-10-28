LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def caesar_cipher(text, shift)
  caesar = text.each_char.map do |char|
    if char.match(/[a-z]/)
      LOWER_CASE.rotate(shift)[LOWER_CASE.index(char)]
    elsif char.match(/[A-Z]/)
      UPPER_CASE.rotate(shift)[UPPER_CASE.index(char)]
    else char
    end
  end.join()
end

puts caesar_cipher("What a string!", 5) # => Bmfy f xywnsl!