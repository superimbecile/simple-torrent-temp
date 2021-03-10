FROM ubuntu:18.04
RUN apt-get update && apt-get install wget -y
RUN mkdir /app
RUN cd /app && wget https://flaresofdata.herokuapp.com/bucket/cloud-torrent_linux_amd64 -O /app/cloud-torrent_linux_amd64 && chmod +x /app/cloud-torrent_linux_amd64
CMD ./app/cloud-torrent_linux_amd64 -p 8080 -a admin:google
