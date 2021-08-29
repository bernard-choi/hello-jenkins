FROM ubuntu:18.04

ENTRYPOINT ["top"]
CMD ["-d", "5"]
