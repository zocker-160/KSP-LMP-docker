FROM mono

MAINTAINER zocker-160

RUN \
	apt-get update \
	&& apt-get install -y jq curl wget unzip nano

# get latest LMP release

WORKDIR /Luna-docker
RUN curl --silent "https://api.github.com/repos/LunaMultiplayer/LunaMultiplayer/releases/latest" | jq -r '.assets[1].browser_download_url' | wget -i -
RUN unzip LunaMultiplayer-Release.zip

# remove not needed files
RUN rm -rf ./LMPClient && rm ./LunaMultiplayer-Release.zip
WORKDIR /Luna-docker/LMPServer
RUN mkdir logs

EXPOSE 8800/udp
EXPOSE 8801/udp

VOLUME /Luna-docker/LMPServer

CMD mono Server.exe
