# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"


def is_prime?(num)
if num < 2 
    return false
else
    (2...num).none? {|i| num % i == 0}     
    end

end


def largest_prime_factor(num)
count = 0
(2..num).each do |i|
    if num % i == 0 && is_prime?(i)
        count = i
    end 


end
return count
end


def unique_chars?(string)
counts = Hash.new(0)
i = 0
string.each_char do |char| 
    counts[char] += 1
if counts[char] > 1
    return false && break
end

end
return true


end


def dupe_indices(array)
counts = Hash.new{ |h, k| h[k] = [] }   
array.each.with_index {|vals, i| counts[vals] << i  } 
new_hash = counts.reject{|key, value| value.length <= 1}
return new_hash
end

def check_eq(array)
counts = Hash.new(0)

array.each {|ele| counts[ele] += 1}

counts

end

def ana_array(arr1, arr2)
if check_eq(arr1) == check_eq(arr2)
    return true
else
    return false
end

end

p ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"])

p ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])