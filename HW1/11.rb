p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.	'
p 'array = [24,19,1,23,-5,22,12,19,-12,20,51,62,-1,0,15,16,17,18,19,100] p array.each_with_index {|v, i| array[i] = array.min if v < 0}'
array = [24,19,1,23,-5,22,12,19,-12,20,51,62,-1,0,15,16,17,18,19,100]
p array.each_with_index {|v, i| array[i] = array.min if v < 0}