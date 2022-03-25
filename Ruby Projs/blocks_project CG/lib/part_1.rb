def  select_even_nums(array)
    array.select(&:even?)
end

def reject_puppies(dogs)
    dogs.reject{|dog| dog["age"] <= 2}
end

def count_positive_subarrays(arr2d)
    arr2d.count{|subarr| subarr.sum > 0}
end

def aba_translate(string)
new_word = ""
vowels = "aeiou"

string.each_char do |char|
    if vowels.include?(char)
        new_word += char + "b" + char
    else
        new_word += char
    end
end
return new_word
end


def aba_array(array)

    array.map {|word| aba_translate(word)}

end
