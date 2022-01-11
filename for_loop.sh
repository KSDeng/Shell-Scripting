
# for 循环一般格式

# for var in item1 item2 ... itemN
# do
#		command1
#		command2
#		...
#		commandN
# done

# 写成一行：
# for var in item1 item2 ... itemN; do command1; command2; ...; done;

for loop in 1 2 3 4 5
do
	echo "The value is: $loop"
done


for str in This is a string
do
	echo $str
done

