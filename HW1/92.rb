p 'Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false.'
p 'p [24,56,58,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,20].inject(false){ |r, v| r || v < 1 }'
p [24,56,58,23,45,22,12,19,39,20,51,62,33,44,15,16,17,18,19,20].inject(false){ |r, v| r || v > 1 }