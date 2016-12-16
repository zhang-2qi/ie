import random
a=[]
l=[]
'''
从键盘读
a.append(int(input()))
a.append(int(input()))
sample=[i for i in range(a[0])]
for i in range(a[1]):
	l.append(int(input()))
'''
#从文件中读入
input=open('require.txt','r')
list_of_all_line=input.read().split()
a.append((int)(list_of_all_line[0]))
a.append((int)(list_of_all_line[1]))
sample=[i for i in range(a[0])]
for i in range(a[1]):
	l.append(int(list_of_all_line[i+2]))
data = [[0 for i in range(a[1]+1)]for j in range(a[0])]

for k in range(a[1]):
	select_sample=random.sample(sample,l[k])
	for i in select_sample:
		data[i][k]=1
output = open('data.txt','w')
for i in range(a[0]):
	for j in range(a[1]+1):
		output.write(str(data[i][j])+' ')
	output.write('\n')
output.close()
