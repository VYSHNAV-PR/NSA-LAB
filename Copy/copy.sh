#shell script to copy a set of files given as pairs at command prompt
r=` expr $# % 2 `
if [ $r -ne 0 ]
then
echo " file names are not in pairs "
exit 1
fi
while [ $# -ne 0 ]
do
cp $1 $2
shift
shift
done
exit 0
