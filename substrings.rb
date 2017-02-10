def substrings(str,dict)
  results = Hash.new(0)
  dict.each do |word|
    str.downcase.scan(word){
      results[word] = results[word] + 1
    }
  end
  return results
end







dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
