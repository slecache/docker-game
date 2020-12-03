#!/bin/sh
#!/bin/sh

if [ -f /restart ]
then
  cat << EOM
docker-game
===========

Level 10

It's time to take a look to the logs. But will you be able to take all theses lines? Tips: check in the last 1000 lines for this container: docker run slecache/docker-game:flood

EOM
else
  cat << EOM
docker-game
===========

Level 9

This container is stopped. Start it again to progress. Naming a container can help to start it many times (and don't forget to attach me).

EOM
  touch /restart
fi
