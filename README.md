# A small KSP Lunarmultiplayer (LMP) docker image
This docker image is based on the [Lunarmultiplayer](https://github.com/LunaMultiplayer/LunaMultiplayer) mod and creates a server for Kerbal Space Proram.

## Instructions
To start the docker image run:

```
docker run \
 --name "LMP Server" \
 -p 8800:8800 \
 -p 8801:8801 \
zocker160/ksp-lmp-docker:latest
```

Additional parameters:

// TODO

## Extra bits
[Docker Hub page](https://hub.docker.com/r/zocker160/sheepit-docker-webui//)  
[GitHub page](https://github.com/zocker-160/sheepit-docker-webUI)

[SheepIt client GitHub repo](https://github.com/laurent-clouet/sheepit-client)  
[SheepIt site](https://www.sheepit-renderfarm.com/)
