dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (word, dictionary)
  # create an empty hash
  count = Hash.new(0)
  # Downcase and split the input word into an array
  words = word.downcase.split

  # Iterate through each word
  words.each do |word|
    # Iterate through the dictionary
    dictionary.each do |substring|
      # Check if the dictionary includes substring of the word
      if word.include?(substring)
        # Increment the count for that string in the hash
        count[substring] += 1
      end
    end
  end
  # return the hash with the substring counts
  return count
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)