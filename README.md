# Bash Intro example files

These files are used during an introductory workshop to the bash shell and the Linux terminal. Just clone the repository, enter the directory, and you are ready to go.

## Usage with Docker

You you can't run Linux or you don't have bash you can run it in a Docker container. Enter the repository directory that you cloned and run the following command

```
docker run -t -i -v ${PWD}:/opt/bash_intro ubuntu /bin/bash
```

Docker will download and run a Linux Ubuntu image, connecting the local directory with the directory `/opt/bash_intro` inside the container. Once you are given a prompt run this

```
cd /opt/bash_intro
```

and you will be ready to go. Once finished just type `exit` and you will return to the terminal in your OS.

