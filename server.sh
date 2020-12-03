#!/bin/sh
read -r -d '' BODY << EOM
<pre>docker-game
===========

Great, you are able to expose a container port outside the docker engine.

Level 9

Please check your console!</pre>
EOM

RESPONSE="HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n${BODY}\r\n"
while { echo -en "$RESPONSE"; } | nc -l -p 8080; do
    cat << EOM
docker-game
===========

Level 9

Have you ever tried starting again an existing container? Some of them have memories, like this one: docker run slecache/docker-game:memories

EOM
    exit 0
done