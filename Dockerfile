FROM mono

MAINTAINER zocker-160

RUN \
	apt update \
	&& apt install -y jq curl wget unzip nano

# get latest LMP release

WORKDIR /LMP-server
RUN curl --silent "https://api.github.com/repos/LunaMultiplayer/LunaMultiplayer/releases/latest" | jq -r '.assets[1].browser_download_url' | wget -i -
RUN unzip LunaMultiplayer-Release.zip

# remove not needed files
RUN rm -rf ./LMPClient && rm ./LunaMultiplayer-Release.zip
WORKDIR /LMP-server/LMPServer
RUN mkdir logs

EXPOSE 8800/udp
EXPOSE 8801/udp
EXPOSE 8900/tcp

VOLUME /LMP-server/LMPServer

CMD mono Server.exe
