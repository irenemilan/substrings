dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new(0)
  dictionary.each do |word|
    match = text.downcase.scan(word)
    result[word] += match.count unless match.empty?
  end
  return p result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)