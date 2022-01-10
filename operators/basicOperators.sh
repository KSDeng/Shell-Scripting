#!/bin/bash

# https://www.runoob.com/linux/linux-shell-basic-operators.html
# 原生bash不支持简单的数学运算，但是可以通过其他命令来实现，最常用的是expr
# expr是一款表达式计算工具，使用它能完成表达式的求值操作
# 表达式和运算符之间要有空格，例如2+2是不对的，必须写成2 + 2
# 完整的表达式要被` `包含
val=`expr 2 + 2`
echo "两数之和为: $val"


a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

# 乘法符号*要用转义符
val=`expr $a \* $b`
echo "a * b : $val"

# 除法是反斜杠而不是斜杠
val=`expr $b / $a`
echo "b / a : $val"

# 取余
val=`expr $b % $a`
echo "b % a : $val"

# = 是赋值, == 是判断两个数字是否相等，相等返回true
# 条件表达式要放在方括号之间，并且要有空格，例如[$a==$b]是错误的，必须写成[ $a == $b ]
if [ $a == $b ]
then
	echo "a 等于 b"
fi

if [ $a != $b ]
then
	echo "a 不等于 b"
fi

# 在MAC中shell的expr语法是: $((表达式))，此处的表达式中的“*”不需要转义符号


# 使用方括号
# "$[]"这种格式也可以用于表达式，比使用expr方便很多

var1=$[1 + 5]
echo $var1

var2=$[$var1 * 2]
echo $var2

var1=100
var2=50
var3=45
# 方括号中的"*"不需要使用转义符
var4=$[$var1 * ($var2 - $var3)]
echo The final result is $var4		# echo 后面输出的字符串可以不加双引号


var1=100
var2=45
var3=$[$var1 / $var2]		# 这种方式处理不了浮点运算
echo The final result is $var3




