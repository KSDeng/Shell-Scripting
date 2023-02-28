# for 循环
for var in list;
do
	commands;		# 使用变量$var
done

for i in {a..z}; do actions; done;

for ((i=0;i<10;i++))
{
	commands;		# 使用变量$i
}


# while 循环
while condition
do
	commands;
done
# 用true作为循环条件能够产生无限循环

# until循环
x=0;
until [ $x -eq 9 ]; # 条件是[ $x -eq 9 ]
do 
	let x++; echo $x;
done


# if条件
if condition;
then
	commands;
fi

# else if 和 else
if condition;
then
	commands;
else if condition; then
	commands;
else
	commands;
fi

# then也可以不换行
if condition; then
	commands
else
	commands
fi


# 算术比较
# 条件通常被放置在封闭的中括号内。一定要注意在'['或']'与操作数之间有一个空格
# 如果忘记了这个空格，脚本就会报错

# 对变量或值进行算术条件判断
[ $var -eq 0 ]		# 当 $var 等于0时，返回真
[ $var -ne 0 ]		# 当 $var 为非0时，返回真

# 其他常见操作符
-gt # 大于
-lt # 小于
-ge # 大于或等于
-le # 小于或等于

# 结合多个条件进行测试:
[ $var1 -ne 0 -a $var2 -gt 2 ]		# 使用逻辑与-a
[ $var1 -ne 0 -o $var2 -gt 2 ]		# 使用逻辑或-o

# 文件系统相关测试

[ -f $file_var ] # 如果给定的变量包含正常的文件路径或文件名，则返回真
[ -x $var ] # 如果给定的变量包含的文件可执行，则返回真
[ -d $var ] # 如果给定的变量包含的是目录，则返回真
[ -e $var ] # 如果给定的变量包含的文件存在，则返回真
[ -c $var ] # 如果给定的变量包含的是一个字符设备文件的路径，则返回真
[ -b $var ] # 如果给定的变量包含的是一个块设备的路径，则返回真
[ -w $var ] # 如果给定的变量包含的文件可写，则返回真
[ -r $var ] # 如果给定的变量包含的文件可读，则返回真
[ -L $var ] # 如果给定的变量包含的是一个符号链接，则返回真


# 字符串比较
# 使用字符串比较最好使用双中括号

# 以下两种方法均可判断两个字符串是否相同
[[ $str1 = $str2 ]]
[[ $str2 == $str2 ]]

# 判断字符串是否不同
[[ $str1 != $str2 ]]

# 检查字符串字母序情况
[[ $str1 > $str2 ]] # 如果str1的字母序比str2大，则返回真
[[ $str1 < $str2 ]] # 如果str1的字母序比str2小，则返回真
[[ -z $str1 ]] # 如果str1包含的是空字符串，则返回真
[[ -n $str1 ]] # 如果str1包含的是非空字符串，则返回真

# 逻辑运算另一种写法
# '&&': 逻辑与
# '||': 逻辑或
if [[ -n $str1 ]] && [[ -z $str2 ]];
then
	commands;
fi


