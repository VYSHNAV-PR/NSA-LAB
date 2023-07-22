#Compare 2 files

if [ $# -gt 2 -o $# -eq 1 ]
then
echo ""Syntax Error.\nSyntax --> $0 [filename] [filename]
exit
fi
if [ $# -eq 0 ]
then
echo "Enter a file name :: "
read a
echo "Enter another file name :: "
read b
else
a=$1
b=$2
fi
cmp $a $b > /dev/null
if [ $? -eq 0 ]
then
rm $b
echo "Removed duplicate file"
else
echo "Not a duplicate file"
fi
