FROM alpine
COPY secret.txt /
CMD ["echo","-e","docker-game\n===========\nI'm locked.\n\nLevel 5\n\nYou should override the default CMD to look at this /secret.txt and unlock this level.\n"]