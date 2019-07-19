# A simple KSP Lunamultiplayer (LMP) docker image
This docker image is based on the [Lunamultiplayer](https://github.com/LunaMultiplayer/LunaMultiplayer) mod and creates a server for Kerbal Space Program.

Image automatically downloads the latest release of LMP during first deployment.

## Instructions
To start the docker image run:

```
docker run \
 --name "LMP Server" \
 -p 8800:8800 \
zocker160/ksp-lunamultiplayer:latest
```
## Usage

- `-p 8800:8800` LMP game server port (default 8800)
- *(optional)* `-v <insert/path/here>:/Luna-docker/LMPServer:rw` The location to store all your permanent files (logs, config and more)

#### Additional parameters:

*none yet - but you can create a [issue](https://github.com/zocker-160/KSP-LMP-docker/issues) on GitHub if you have an idea* or a problem ;)

#### The public server list can be found [here](http://lunamultiplayer.com/pages/releaseservers.html).

## Extra bits
[Docker Hub page](https://hub.docker.com/r/zocker160/ksp-lunamultiplayer)  
[GitHub page](https://github.com/zocker-160/KSP-LMP-docker)

[LMP GitHub repo](https://github.com/LunaMultiplayer/LunaMultiplayer)  
[LMP site](http://lunamultiplayer.com/)
