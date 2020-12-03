#!/bin/sh

for j in `seq 1 1000`; do echo "docker docker docker docker docker docker docker docker docker docker";done

cat << EOM
docker-game
===========

Congratulations! You completed our Docker Game!

Finish line

Well you:

- started a container with "docker run"
- started a container from label
- used the interactive process with "-ti" option
- entered in container with "docker exec"
- mounted folder inside a container on host machine with "-v" option
- overrided default CMD
- overrided default ENTRYPOINT
- inspected an image
- exposed container port on host machine with "-p" option
- restarted an existing container with "docker start -a"
- scanned container's log

Docker is extremely important tool to learn and use, 
Especially when deploying complex systems.
It is our hope that you continue to practice your docker skills so that you can one day become the ultimate docker master!

Thanks for playing!

PS: Maybe an advanced mode or easter eggs will arrive. ;-)

EOM

for i in `seq 1 971`; do echo "docker docker docker docker docker docker docker docker docker docker"; done
