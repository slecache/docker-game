FROM alpine
COPY entrypoint.sh /
COPY bug.txt /
CMD ["/entrypoint.sh"]