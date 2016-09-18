# dockerfile-ssh-agent

This repository contains a Dockerfile for running [ssh-agent](https://en.wikipedia.org/wiki/Ssh-agent) in a container. This is useful if other containers depend on resources which are not publicly accessible (e.g. private Ruby gems). The image can found as an automated build on [Docker Hub](https://hub.docker.com/r/sh4rk/ssh-agent/).

## Usage

Run either `docker pull sh4rk/ssh-agent` or build the image yourself with `docker build -t sh4rk/ssh-agent .`.

See `docker-compose.yml` for an example on how to use this image. After the container is up, run `docker-compose exec ssh-agent add.sh` to add the ssh keys. You will be prompted to enter the password if they are encrypted.

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request! :)

## History

- v0.1.0 (2016-09-18): initial version

## License

This project is licensed under the MIT License. See LICENSE for details.
