# tor

**Obsoleted in favor of https://community.torproject.org/relay/setup/bridge/docker/ **

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

## configuration

If you like to configure the service, you can do so by setting environment varaibles.
See the [docker-compose.yml][compose] file for the full configuration options.
Below, you can find an example for a tor relay.

### relay

If you want to run a relay, a `docker-compose.yml` can be generated as described
in [this post][relay]:

```yaml

version: "2"

services:
  tor:
    image: niccokunzmann/tor
    ports:
    - "443:443"
    environment:
      ORPort: 443
      ExitPolicy: "reject *:*"
      Nickname: ididntedittheconfig
      ContactInfo: "human@..."

```

If you want to change the `Exitpolicy`, you should read [about what to let through to reduce legal implications][reduced-exit-policy].

<!-- Use absolute links even for project files so that dockerhub can use them. -->

[tutorial]: https://www.torproject.org/docs/debian.html.en#ubuntu
[builds]: https://hub.docker.com/r/niccokunzmann/tor/builds/
[relay]: https://www.torproject.org/docs/tor-doc-relay.html.en
[compose]: https://github.com/niccokunzmann/tor/blob/master/docker-compose.yml
[reduced-exit-policy]: https://trac.torproject.org/projects/tor/wiki/doc/ReducedExitPolicy

