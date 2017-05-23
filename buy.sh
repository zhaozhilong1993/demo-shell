#!/usr/bin/env python

data_file = open('buy.txt','a+')
data_num_str = 	data_file.read()
data_file.close()
data_num = data_num_str.split('\n')


bit_num = 0
all_count = 0
for i in data_num:
  if not i:
    continue

  index = i.split('\t')
  bit = float(index[1])
  count = float(index[0])

  bit_num = bit + bit_num
  all_count = count + all_count

print 'all buy bit num: %f \n all buy count : %f' % (bit_num, all_count)
