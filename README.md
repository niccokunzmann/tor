# tor

This is a tor docker container which follows [this tutorial][tutorial]

## docker

This project is built on dockerhub.
You can pull it by running

    docker pull niccokunzmann/tor

If you would like to build the image yourself, you can run

    docker build --tag niccokunzmann/tor .

To run the docker container, execute this

    docker run --rm -it niccokunzmann/tor

[tutorial]: https://www.torproject.org/docs/debian.html.en#ubuntu
