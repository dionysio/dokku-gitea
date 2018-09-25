FROM gitea/gitea:latest

COPY sbin/* /sbin/

ENTRYPOINT ["/sbin/dokku-entrypoint.sh"]

CMD ["/bin/s6-svscan", "/etc/s6"]
