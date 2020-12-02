FROM alpine
COPY secret.sh /
ENTRYPOINT ["echo","-e","docker-game\n===========\n\nI'm still locked.\n\nLevel 6\n\nYou should override the default ENTRYPOINT to look at this /secret.sh and unlock this level.\n"]