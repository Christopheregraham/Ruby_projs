def hipsterfy(word)
vowel = "aeiou"
flip = word.reverse
flip.each_char.with_index do |char, i|
if vowel.include?(char)
    flip.slice!(i)
    break
end


end
return flip.reverse
end


def vowel_counts(string)
vowel = "aeiou"
v_count = Hash.new(0)

string.each_char do |char|
if vowel.include?(char.downcase)
    v_count[char.downcase] += 1
end

end
return v_count

end

def caesar_cipher(message, number)
alphabet = ("a".."z").to_a  
msg = ""
message.each_char.with_index do |char, i|
if alphabet.include?(char)
old_idx = alphabet.index(char)
new_idx = old_idx + number
msg += alphabet[new_idx % 26]
else 
    msg += char
end
end
 msg

end


p caesar_cipher("hello", 5)
