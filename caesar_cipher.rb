# arrays for lowercase and uppercase letters
LOWER_CASE = ('a'..'z').to_a
UPPER_CASE = ('A'..'Z').to_a

def caesar_cipher(text, shift)
  # Iterate over each char in the input text
  caesar = text.each_char.map do |char|
    # Check if the char is a lowercase letter
    if char.match(/[a-z]/)
      # Rotate the char by the shift value and find the new char
      LOWER_CASE.rotate(shift)[LOWER_CASE.index(char)]
    # Check if the char is a uppercase letter
    elsif char.match(/[A-Z]/)
      UPPER_CASE.rotate(shift)[UPPER_CASE.index(char)]
    # If the char is not a letter, keep it unchanged
    else char
    end
  # Join the encrypted chars into a single string  
  end.join()
end

puts caesar_cipher("What a string!", 5) # => Bmfy f xywnsl!
puts caesar_cipher("Veni, Veni, Vici!", 13) # => Irav, Irav, Ivpv!
puts caesar_cipher("ATTACK AT DAWN!", 3)
puts caesar_cipher("Day 11 of my full-stack developer journey!", 3)
