# to reverse a file
#set -xv
if [ $# -ne 1 ]
then
echo "syntax is <filename>"
exit 1
fi
cp $1 file
line=`cat file | wc -l`
rm vysh
while [ $line -ge 1 ]
do
tail -n 1 file  >> vysh
line=`expr $line - 1`
head -n $line  file > temp 
mv temp file
done
cat vysh
exit 0 
