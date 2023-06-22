dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    hash = Hash.new(0)
    string = string.downcase
    dictionary.each do |word|
        hash[word] = string.scan(word).size if string.include?(word)
    end
    hash
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)


