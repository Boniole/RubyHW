p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p '[24,56,58,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,20].partition.with_index { |_, i| i.even? }'
p [24,56,58,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,20].partition.with_index { |_, i| i.even? }