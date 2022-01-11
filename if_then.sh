
# if else 语法格式
# if condition
# then
# 		command1
#		command2
#		command3
#		...
#		commandN
# else
#		command
# fi

# if else-if else 语法格式
# if condition
# then
#		command1
# elif condition2
# then
# 		command2
# else
#		commandN
# fi

a=10
b=20

if [ $a == $b ]
then
	echo "a 等于 b"
elif [ $a -gt $b ]		# -gt 是greater than（大于），用于数值比较
then
	echo "a 大于 b"
elif [ $a -lt $b ]		# -lt 是less than（小于），用于数值比较
then
	echo "a 小于 b"
else
	echo "没有符合的条件"
fi


