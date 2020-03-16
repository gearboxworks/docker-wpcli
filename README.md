![release](https://github.com/gearboxworks/docker-wpcli/workflows/release/badge.svg?event=release)

![wp-cli 1.0.x](https://img.shields.io/badge/wpcli-1.0.x-green.svg)
![wp-cli 1.1.x](https://img.shields.io/badge/wpcli-1.1.x-green.svg)
![wp-cli 1.2.x](https://img.shields.io/badge/wpcli-1.2.x-green.svg)
![wp-cli 1.3.x](https://img.shields.io/badge/wpcli-1.3.x-green.svg)
![wp-cli 1.4.x](https://img.shields.io/badge/wpcli-1.4.x-green.svg)
![wp-cli 1.5.x](https://img.shields.io/badge/wpcli-1.5.x-green.svg)

![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)


# WP-CLI Docker Container for Gearbox
This is the repository for the [WP-CLI](https://github.com/wp-cli/wp-cli) Docker container implemented for [Gearbox](https://github.com/gearboxworks/gearbox).
It currently provides versions 1.0.x 1.1.x 1.2.x 1.3.x 1.4.x 1.5.x

## Supported tags and respective Dockerfiles
`1.5.1`, `1.5`, `latest` _([1.5.1/Dockerfile](https://github.com/gearboxworks/wp-cli-docker/blob/master/1.5.1/Dockerfile))_

`1.4.1`, `1.4` _([1.4.1/Dockerfile](https://github.com/gearboxworks/wp-cli-docker/blob/master/1.4.1/Dockerfile))_

`1.3.0`, `1.3` _([1.3.0/Dockerfile](https://github.com/gearboxworks/wp-cli-docker/blob/master/1.3.0/Dockerfile))_

`1.2.1`, `1.2` _([1.2.1/Dockerfile](https://github.com/gearboxworks/wp-cli-docker/blob/master/1.2.1/Dockerfile))_

`1.1.0`, `1.1` _([1.1.0/Dockerfile](https://github.com/gearboxworks/wp-cli-docker/blob/master/1.1.0/Dockerfile))_

`1.0.0`, `1.0` _([1.0.0/Dockerfile](https://github.com/gearboxworks/wp-cli-docker/blob/master/1.0.0/Dockerfile))_


## Using this container.
If you want to use this container as part of Gearbox, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.


## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/gearbox/wp-cli/]

(Docker Cloud repo)[https://cloud.docker.com/swarm/gearbox/repository/docker/gearbox/wp-cli/]


### Setup from Docker Hub
A simple `docker pull gearbox/wp-cli` will pull down the latest version.


### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name wpcli-1.2.1 --restart unless-stopped --network gearboxnet -v $PROJECT_ROOT:/project gearbox/wp-cli:1.2.1`

stop - Stop a Docker container.

`docker stop wpcli-1.2.1`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name wpcli-1.2.1 --network gearboxnet -v $PROJECT_ROOT:/project gearbox/wp-cli:1.2.1`

shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name wpcli-1.2.1 -i -t --network gearboxnet -v $PROJECT_ROOT:/project gearbox/wp-cli:1.2.1 /bin/bash`

rm - Remove the Docker container.

`docker container rm wpcli-1.2.1`


## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/wp-cli-docker.git`


### Additional notes:
Running wp-cli within a Docker container relies on the scripts in _([here](https://github.com/gearboxworks/wp-cli-docker/blob/master/files/usr/local/bin))_ to be placed under the `/usr/local/bin` directory of the Gearbox host. This will be performed automatically for you when using this as part of [Gearbox](https://github.com/gearboxworks/gearbox).


### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.


`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.


`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.


`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.


`make stop` - Stop a Docker container.


`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.


`make shell` - Run a shell, (/bin/bash), within a Docker container.


`make rm` - Remove the Docker container.


`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


