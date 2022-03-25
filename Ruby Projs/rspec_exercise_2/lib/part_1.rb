def partition(arr, num)
small = []
large = []

arr.each do |value| 
    if value < num
        small << value
    else
        large << value
    end 
    
end

return [small, large]

    
end


def merge(hash_1, hash_2)
hash = {}
hash_1.each {|k, v| hash[k] = v}
hash_2.each {|k, v| hash[k] = v}
return hash
end


def censor(sentence, array)

census = sentence.split(" ")
census.each.with_index do |word, i|
    if array.include?(word.downcase) 
        remove_vowels(word)
    end


end
return census.join(" ")
end

def remove_vowels(word)
    vowels = "aeiou"

    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            word[i] = "*"
        end


    end
return word
end


def power_of_two?(num)
i = 0
    if num == 0 || num == 1
    return true
    else num % 2 == 0
        while 2**i <= num
        if 2**i == num
            return true
        end
        i+= 1
    end
    return false
end

end
