length=0;
data = [];
for line in open("data.txt"):
	length=len(line)-4;
	line=line[0:length];
	data.append(line);
data.sort();
'''
for i in len(data):
	print("%s\n",data[i]);

'''
number=[];
str=[];
temp=1;
s1="";
s=data[0];
for i in range(len(data)-1):
	s1=data[i+1];
	if(s==s1):
		temp=temp+1;
	else:
		number.append(temp);
		str.append(s);
		s=s1;
		temp=1;
number.append(temp);
str.append(s1);
for i in range(len(str)):
	str[i]=str[i].replace(" ","");


temp=0;
for i in range(len(number)):
	temp=temp+number[i];


pos=0;
pos1=0;
k=0;
output = open('final_data.txt','w')
for i in range(len(number)):
	pos1=int(str[i],base=2);
	if(k==pos1):
		#output.write(str[i],': ',number[i]);
		output.write('%s :  %4d   %f%%'%(str[i],number[i],number[i]*100/temp));
		output.write('\n');
	else:
		while(k<pos1):
			output.write('%06d :  %4d   0%%'%(int(bin(k).replace('0b','')),0));
			output.write('\n');
			k=k+1;
	k=pos1+1;
pos=len(number);
while(pos<64):
	output.write('%06d :  %4d   0%%\n'%(int(bin(pos).replace('0b','')),0));
	pos=pos+1;

	
	
	
	
