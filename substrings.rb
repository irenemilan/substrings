dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new(0)
  text = text.downcase
  dictionary.each do |word|
    matches = text.scan(word)
    result[word] += matches.count unless matches.empty?
  end
  result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)