FROM gitea/gitea:latest

CMD ["/bin/s6-svscan", "/etc/s6"]
