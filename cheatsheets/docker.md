`Docker` commands

# run
- `docker run \`
- `  --detach \`
- `  --name registry \`
- `  --hostname registry \`
- `  --volume $(pwd)/app/registry:/var/lib/registry \`
- `  --publish 5000:5000 \`
- `  --restart unless-stopped \`
- `  registry:latest`

# Basics
- `docker start <container-name>（or <container-id>）`
- `docker stop <container-name>（or <container-id>）`
- `docker run 命令加 -d 参数，docker 会将容器放到后台运行`
- `docker ps 正在运行的容器`
- `docker top 容器名 查看容器内部运行的进程`
- `docker exec -d 容器名 touch /etc/new_config_file  通过后台命令创建一个空文件`
- `docker inspect 容器名   对容器进行详细的检查，可以加 --format='{(.State.Running)}' 来获取指定的信息`
- `docker images 列出镜像`
- `docker pull 镜像名:标签 拉镜像`
- `docker search  查找docker Hub 上公共的可用镜像`
- `docker login  登陆到Docker Hub，个人认证信息将会保存到$HOME/.docker/config`
- `docker history 镜像ID 深入探求镜像是如何构建出来的`
- `docker push 镜像名 将镜像推送到 Docker Hub`
- `docker attach 容器ID   进入容器`

# Container
- `docker rm $(docker ps -a -q)`      Remove all the stopped containers
- `docker rm 容器ID  删除容器，注：运行中的容器无法删除`
- `docker rm docker ps -a -q 这样可以删除所有的容器`

# Image
- `docker rmi 镜像名  删除镜像`
- `docker rmi $(docker images -a | grep "^<none>" | awk "{print $3}")` Remove all the untagged images
- `docker rmi $(docker images -a | grep "^<none>" | cut -d ">" -f 3 | cut -d " " -f 15)`

# Network
- `docker network ls`
- `docker network create --subnet=172.171.0.0/16 docker-at 选取172.172.0.0网段`