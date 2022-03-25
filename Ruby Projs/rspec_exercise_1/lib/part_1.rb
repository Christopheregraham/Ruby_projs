def average(x, y)
avg = (x + y)
return avg / 2.0
end

def average_array(nums)
  nums.sum / (nums.length / 1.0)
end

def repeat(string, num)

return string * num

end


def yell(string)
 string.upcase + "!"
end

def alternating_case(sentence)
words = sentence.split(" ")

new_words = words.map.with_index do |word, i| 
if i % 2 == 0
    word.upcase
else
    word.downcase
end

end
return new_words.join(" ")
end

p alternating_case("code never lies, comments sometimes do.")
p alternating_case("HEY PROGRAMMERS")

p 0 % 2
p 1 % 2