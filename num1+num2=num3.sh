read -p "num1=" num1
read -p "num2=" num2
read -p "num3=" num3

sum=$(( num1+num2 ))

if [ $sum -eq $num3 ]
then
	echo "addition is eqaul"
else
	echo "addition is not equal"
fi
