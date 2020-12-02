FROM alpine
COPY entrypoint.sh /
CMD ["/entrypoint.sh"]