def reverser(str, &prc)

    prc.call(str.reverse)

end

def word_changer(sent, &prc)
words = sent.split(" ")
new_sent = []
words.each do |ele| 
  new_sent << prc.call(ele) 
end
new_sent.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)

if prc_1.call(num) > prc_2.call(num)
    return prc_1.call(num) 
else
    return prc_2.call(num) 
end

end

def and_selector(array, prc_1, prc_2)
  new_arr = [] 
array.select do |ele| 
if prc_1.call(ele) && prc_2.call(ele) 
    new_arr << ele
end

end
new_arr
end

def alternating_mapper(arr, prc_1, prc_2)
new_arr = []
arr.each.with_index do |ele, i| 
if i.even?
    new_arr << prc_1.call(ele)
else
    new_arr << prc_2.call(ele)
end
end
new_arr
end