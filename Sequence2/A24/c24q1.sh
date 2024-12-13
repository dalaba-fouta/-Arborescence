#!/bin/bash

function truc()
{
  return  $ps24
}

chose=/tmp/sleeper.sh
cat >| $chose <<EOF
#!/bin/bash

while true ; do
   # echo -n "$1 zzz " ; 
   sleep 20
done
exit 0
EOF
chmod a+x $chose

max=$((1))
a=$(eval echo {1..$max})
for i in $a ; do
   #$chose $((0+i)) &
   truc $i 
done


