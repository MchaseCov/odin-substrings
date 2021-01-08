#Take a word as an argument and compare to substrings to see if this argument
#contains any substrings from a preset dictionary of terms!

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(input, dictionary)
  answer = {} #creates a blank hash
  dictionary.each do |word|
    answer[word] = input.downcase.scan(word).length if input.downcase.include?(word)
  end
  answer
end
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
