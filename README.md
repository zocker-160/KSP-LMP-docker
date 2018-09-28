# A lightweight KSP Lunamultiplayer (LMP) docker image
This docker image is based on the [Lunamultiplayer](https://github.com/LunaMultiplayer/LunaMultiplayer) mod and creates a server for Kerbal Space Program.

## Instructions
To start the docker image run:

```
docker run \
 --name "LMP Server" \
 -p 8800:8800 \
 -p 8801:8801 \
 -v <insert/path/here>:/Luna-docker/LMPServer:rw \
zocker160/ksp-lmp-docker:latest
```

Additional parameters:

// TODO

#### The public server list can be found [here](http://lunamultiplayer.com/pages/releaseservers.html).

## Extra bits
[Docker Hub page](https://hub.docker.com/r/zocker160/ksp-lmp-docker/)  
[GitHub page](https://github.com/zocker-160/KSP-LMP-docker)

[LMP GitHub repo](https://github.com/LunaMultiplayer/LunaMultiplayer)  
[LMP site](http://lunamultiplayer.com/)
