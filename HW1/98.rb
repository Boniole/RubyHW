p 'Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.'
p 'array = [24,19,1,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,100] p (1...array.size).select{ |i| (array[i] < array[i-1]) } p (1...array.size).select{ |i| (array[i] < array[i-1]) }.count'
array = [24,19,1,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,100]
p (1...array.size).select{ |i| (array[i] < array[i-1]) }
p (1...array.size).select{ |i| (array[i] < array[i-1]) }.count