def palindrome?(string)
reverse = ""
string.each_char {|char| reverse.insert(0, char)}
if reverse == string
    return true
else
    return false
end


end


def substrings(string)
arr = []

(0...string.length).each do |start_idx|
(start_idx...string.length).each do |last_idx|
arr << string[start_idx..last_idx]
end
end
return arr
end

def palindrome_substrings(string)

substrings(string).select {|substr| substr.length > 1 && palindrome?(substr) }
        


end



