#!/bin/bash
echo "Resetting database..."
for i in db/counters/*.txt
do
  echo "0" > $i
done
echo "0" > db/random.txt
rm -f db/extras/*.txt
rm -f db/deadlines/*.txt
>db/tags.txt
>db/chatids.txt
>db/chatids2.txt
>db/counters-disabled.txt
>db/subsoff.txt
>db/users.txt
echo "Done!"
