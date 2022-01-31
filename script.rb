#mplement a method #substrings that takes a word as the first argument and then an array of valid substrings
# (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) 
#that was found in the original string and how many times it was found.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string, dictionary)
    result = Hash.new
    #looping dictionary to see if any word from string is included
    dictionary.each do |item|
        string.split(" ").each do |word|
            if word.downcase.include?(item)
                #if there is no key in result, we first create one
                result.key?(item) ? result[item] += 1 : result[item] = 1
            end
        end
    end
    result
end


p substrings("Howdy partner, sit down! How's it going?",dictionary) #{"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
p substrings("It was below zero!", dictionary)  #{"below"=>1, "it"=>1, "i"=>1, "low"=>1}
