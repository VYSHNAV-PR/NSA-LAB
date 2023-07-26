# menu driven program
opt=0
while [ $opt -le 7 ]
do
echo "1.All ordinary files \n2.All Directory files \n3.All special files \n4.All files readable to ugo \n5.All files writable to ugo \n6.All files executable to ugo \n7.All files with rwx to owner \n8.exit"
echo "\nEnter your Option: "
read opt
case $opt in
1)
count=0
echo "\n\n\n-----ALL ORDINARY FILES-----"
for f in *
do
if [ -f $f ]
then
count=$count+1
echo $f
fi
done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;
2)
count=0
echo "\n\n\n-----ALL DIRECTORY FILES-----"
for f in *
do
if [ -d $f ]
then
count=$count+1
echo $f
fi
done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;
3)
count=0
echo "\n\n\n-----ALL SPECIAL FILES-----"
for f in *
do
if [ ! -d $f -a ! -f $f ]
then
count=$count+1
echo $f
fi
done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;
4)
count=0
echo "\n\n\n-----ALL FILES READABLE TO UGO-----"
for f in *
do
if [ -f $f ]
then
u=`ls -l $f | cut -c 2-2`
g=`ls -l $f | cut -c 5-5`
o=`ls -l $f | cut -c 8-8`
if [ $u = "r" -a $g = "r" -a $o = "r" ]
then 
count=$count+1
echo $f
fi
fi
done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;

5)
count=0
echo "\n\n\n-----ALL FILES WRITABLE TO UGO-----"
for f in *
do
if [ -f $f ] 
then
u=`ls -l $f | cut -c 3-3`
g=`ls -l $f | cut -c 6-6`
o=`ls -l $f | cut -c 9-9`
if [ $u = "w" -a $g = "w" -a $o = "w" ]
then 
count=$count+1
echo $f
fi
fi
done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;

6)
count=0
echo "\n\n\n-----ALL FILES EXECUTABLE TO UGO-----"
for f in *
do
if [ -f $f ] 
then
u=`ls -l $f | cut -c 4-4`
g=`ls -l $f | cut -c 7-7`
o=`ls -l $f | cut -c 10-10`
if [ $u = "x" -a $g = "x" -a $o = "x" ]
then 
count=$count+1
echo $f
fi
fi
done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;

7)
count=0
echo "\n\n\n-----ALL FILES RWX TO OWNER-----"
for f in *
do
if [ -f $f ]
then
rwx=` ls -l $f | cut -c 2-4`
if [ $rwx = "rwx" ]
then
count=$count+1
  echo $f
fi
fi
 done
if [ $count = 0 ]
then
echo "No files exist"
fi
;;
8) exit 0
;;
esac
echo "\nPress enter to continue"
read x
done 
