array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
p array.count
p array.reverse
p array.max
p array.min
p array.sort
p array.sort.reverse
p array.select{|i| i.even?}
p array.select{|i| i%3==0}
p array.uniq
p array.map { |i| i.to_f/10 }
p array.select{|i| ('a'...'z').to_a.count}.map.each{|i| ('a'...'z').to_a[i-1]}.compact
new_array = array.map{|i| i}
min_index, max_index = new_array.index(new_array.min), new_array.index(new_array.max)
new_array[min_index], new_array[max_index] = new_array.max, new_array.min
p new_array
p array[0..array.index(array.min)-1]
new_array = array.map{|i| i}
new_array.delete(new_array.min)
new_array.delete(new_array.min)
new_array.delete(new_array.min)
p new_array