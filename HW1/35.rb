p 'Дан целочисленный массив. Найти индекс первого минимального элемента.'
p 'array = [24,19,1,23,1,22,1,19,39,20,51,62,33,44,15,16,17,18,19,100] p array.each_with_index.select{|v, i| v == array.min}.first[1]'
array = [24,19,1,23,1,22,1,19,39,20,51,62,33,44,15,16,17,18,19,100]
p array.each_with_index.select{|v, i| v == array.min}.first[1]