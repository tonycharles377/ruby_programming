#function_defination
def substring(string, dictionary)
  hash = {}
  string = string.downcase
  dictionary.each do |word|
    word = word.downcase
    if string.include?(word)
      hash[word] = string.scan(word).count
    end
  end
  puts hash
end

#test_case_1
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy partner, sit down! How's it going?", dictionary)

#expected_output
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
