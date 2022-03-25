def all_words_capitalized?(array)
    array.all? {|word| word == word.capitalize()} 
end

def no_valid_url?(array)
    array.none?{|url| url.include?('.com'||'.net'||'.io'||'.org')}
end

def any_passing_students?(students)
    students.any?{|student| avg_grades(student[:grades]) >= 75 }
end

def avg_grades(array)
    array.sum.to_f / array.size
end

