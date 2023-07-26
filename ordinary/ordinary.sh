#script to rename all ordinary files in a directory with filename.pid of shell

if [ $# -gt 1 ]
then
echo "Syntax Error.\nSyntax is <$0> <location> or <$0>"
exit 1
fi
if [ $# -ne 0 ]
then
cd $1
fi
for i in * 
do
if [ -f $i ]
then
mv $i $i.$$
fi
done
echo "File names changed to filename.$$"
