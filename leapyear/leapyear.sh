#script to check leap year or not
if [ $# -gt 1 ]
then
echo "Syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "enter an year:"
read year
else
year=$1
fi
d=`expr $year % 4`
b=`expr $year % 100`
c=`expr $year % 400`
if [ $d -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then
echo "$year is a leap year"
else
echo "$year is not a leap year"
fi
exit 0


