FROM alpine
LABEL description="Well done, you are under the hood. Level 8: Check here the exposed port of this image and EXPOSE it on your host, this container will show you the way."
COPY server.sh /server.sh
EXPOSE 8080
CMD ["/server.sh"]
