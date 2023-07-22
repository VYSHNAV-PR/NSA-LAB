#script to find ncr
#set -vx
if [ $# -ne 0 ]
then
echo "syntax is <$0>"
exit 1
fi
fact()
{ n1=$1
i=1
f=1
while [ $i -le $n1 ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
return $f
}
echo "enter value for n "
read n
echo "enter value for r"
read r
fact $n
nf=$?
fact $r
rf=$?
fact `expr $n - $r`
nrf=$?
dr=`expr $rf "*" $nrf`
ncr=`expr $nf / $dr`
echo "ncr = $ncr"

