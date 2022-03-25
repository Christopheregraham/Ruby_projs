# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length > 0
    self.sort[-1] - self.sort[0]
    end

  end

  def average
    if self.length > 0
   return self.sum / (self.length * 1.0)
    end

  end

  def median
return nil if self.empty?
sorted = self.sort
middle = self.length / 2
neighbor = middle - 1
  if self.length.odd? 
    return sorted[middle]
  elsif self.length.even?
  return (sorted[middle] + sorted[neighbor]) / 2.0
end

end

def counts
    hash = Hash.new(0)
    self.each{|ele| hash[ele] += 1}
    hash
end

def my_count(value)
    hash = self.counts
    return hash[value]
end

def my_index(element)
    self.each.with_index do |ele, i| 
    if ele == element
        return i 
        break
    end
    end
nil
end

def my_uniq
arr = []
self.each do |ele|
if !arr.include?(ele)
    arr << ele
end

end
return arr
end

def my_transpose
    new_arr = [] 
(0...self.length).each do |row| 
    new_row = []
    (0...self.length).each do |column|
        new_row << self[column][row]
end
new_arr << new_row
end
new_arr 
end
end
