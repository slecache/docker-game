#!/bin/sh
MEM_IN_MB=$(cat /sys/fs/cgroup//memory/memory.stat | grep hierarchical_memory_limit | awk '{ print $2/1024/1024}')
RESULT=$(expr $MEM_IN_MB - 100)
if [[ $RESULT == -* ]] || [[ $RESULT == 0 ]]
then
cat << EOM
docker-game
===========

Level 12

Well done! What could be your next task?

To be continued...

EOM

else
cat << EOM
docker-game
===========

Level 11

Let's enter in the advanced levels. Your first task is to enforce the hard memory limits of this container to 100MB.

EOM
fi