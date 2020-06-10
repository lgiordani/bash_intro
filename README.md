# Bash introductory workshop

These files are used during an introductory workshop to the bash shell and the Linux terminal. Just clone the repository, enter the directory, and you are ready to go.

## Usage with Docker

If you can't run Linux or you don't have bash you can use a Docker container. I provide here a Docker image with everything you need for the workshop. Follow the **Setup** steps the very first time, and then every time you need the image just skip to the **Usage** section.

### Setup

The very first time you run the Docker command you will get an image that has been _minimised_, that is stripped of everything is not essential to run a Linux server, so manual pages are not present. As we will use them throughout the workshop you should run the following commands once you are given the prompt

``` sh
docker build -t bash_intro .
```

which `build`s and image called `bash_intro` from the `Dockerfile` in current directory (`.`). Once that is done run

``` sh
docker image ls | grep bash_intro
```

and you should see a line similar to

``` text
bash_intro     latest     ad02c8e90982     37 seconds ago     176MB
```

### Usage

Every time

``` sh
docker run -t -i -v ${PWD}:/opt/bash_intro bash_intro /bin/bash
```

Docker will run the command `/bin/bash` on your image called `bash_intro` connecting the local directory (`${PWD}`) with the directory `/opt/bash_intro` inside the container. Once you are given a prompt run this

``` sh
cd /opt/bash_intro
```

and you will be ready to go. Once finished just type `exit` and you will return to the terminal in your OS.



