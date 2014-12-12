docker-keybox
=============

Docker setup for KeyBox  -  https://github.com/skavanagh/KeyBox

KeyBox is an open-source project from @skavanagh.
{quote}
A web-based ssh console to execute commands and manage multiple systems simultaneously. KeyBox allows you to share terminal commands and upload files to all your systems.
{quote}

This project simply deploys the latest release version of KeyBox in a docker container, complete with dependancies.


Build Docker Image
------------------

```shell
$ docker build -t <repo>/<image_name>:<tag> https://github.com/jerynmathew/docker-keybox.git
```


Start Docker Image
------------------

```shell
$ docker run -d -p 8443:8443 --name <container name> <repo>/<image_name>:<tag>
```


