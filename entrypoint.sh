#!/bin/sh

if [ -d "/data" ]
then
  cat << EOM
docker-game
===========

It seems that you exfiltered some data outside the container.

Level 5

Let's check the content of your mounted folder on the host machine.
EOM

  cat << EOM > /data/secret.txt
docker-game
===========

You found the exfiltered data!

Level 5

It's the time to try to unlock the following container: docker run slecache/docker-game:unlockme

EOM

  exit
fi

cat << EOM
docker-game
===========

It looks like you have some knowledge about running an image from its tag!
Well, let's get this party started!

Level 2

We want to run this container in interactive mode. Then, you can answer to this riddle:
I am a creature that is smaller than man, but many times more in number.
In code, my appearance can be subtle and no matter where I am found, I am unwanted.

What am I?

If you are still confused, this link might help: https://docs.docker.com/engine/reference/run/#foreground

EOM

read varname

if [ "$varname" = "bug" ]
then
    clear
    cat << EOM
docker-game
===========

Congratulations, it looks like you found the "bug".
When you encounter bug, you might need to inspect the contents of a container.

Level 3

You should take a look at this /bug.txt file.
EOM
fi
