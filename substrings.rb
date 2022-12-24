dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new(0)
  dictionary.each do |word|
    result[word] += 1 unless text.scan(word).empty?
  end
  return p result
end

substrings('below', dictionary)