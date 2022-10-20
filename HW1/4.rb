p 'Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p 'array = [24,19,1,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,100] result = [] array.each_with_index {|v, i| result[0] = i if array[0] < array[i] and array[i] < array[-1]} p result'
array = [24,19,1,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,100]
result = []
array.each_with_index {|v, i| result[0] = i if array[0] < array[i] and array[i] < array[-1]}
p result
