#!/bin/bash

chose=/tmp/bill
loop=macmd
max=$((1))

cat >| $chose <<EOF
#!/bin/bash
i=0
while ((i < $max)) ; do
   # echo -n "$1 zzz " ; 
   ./$loop &
   sleep 1000 
   ((i++))
done
exit 0
EOF

cat >| $loop <<EOF
#!/bin/bash
i=0
while true ; do
   ((i++%65000))
done
exit 0
EOF

chmod a+x $chose $loop

a=$(eval echo {1..$max})
for i in $a ; do
   $chose $((0+i)) &
done

exit 0 
