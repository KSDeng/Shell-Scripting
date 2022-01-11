
# whlie 语句语法格式
# while condition
# do
#		command
# done

int=1

# 双括号命令允许在比较过程中使用高级数学表达式
# 双括号命令格式如下：
# (( expression ))
# expression 可以是任意的数学赋值或比较表达式
# 双括号命令里的大于小于号不需要转义

while (( $int <= 5 ))
do
	echo $int
	let "int++"		# let指令用于执行一个或多个表达式，其中的变量可不用$符号引用
done
