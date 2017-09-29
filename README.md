# tor

[![Docker Build Status](https://img.shields.io/docker/build/niccokunzmann/tor.svg)][builds]

This is a tor docker container which follows [this tutorial][tutorial]

## docker

This project is built on dockerhub.
You can pull it by running

    docker pull niccokunzmann/tor

If you would like to build the image yourself, you can run

    docker build --tag niccokunzmann/tor .

To run the docker container, execute this

    docker run --rm -it niccokunzmann/tor

## relay

If you want to run a relay, a `docker-compose.yml` can be generated as described
in [this post][relay]:

```yaml

version: "2"

services:
  tor:
    image: niccokunzmann/tor
    environment:
      ORPort: 443
      Exitpolicy: "reject *:*"
      Nickname: ididntedittheconfig
      ContactInfo: "human@..."

```


[tutorial]: https://www.torproject.org/docs/debian.html.en#ubuntu
[builds]: https://hub.docker.com/r/niccokunzmann/tor/builds/
[relay]: https://www.torproject.org/docs/tor-doc-relay.html.en
