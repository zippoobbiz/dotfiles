`Docker` commands

# Container
- `docker rm $(docker ps -a -q)`      Remove all the stopped containers

# Image
- `docker rmi $(docker images -a | grep "^<none>" | awk "{print $3}")` Remove all the untagged images
- `docker rmi $(docker images -a | grep "^<none>" | cut -d ">" -f 3 | cut -d " " -f 15)`