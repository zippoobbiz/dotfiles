`docker-compose` commands

# docker-compose
- `docker-compose up -d`        up 构建、启动容器 -d 后台运行
- `docker-compose down`
- `docker-compose ps`           ps 列出所有运行容器
- `docker-compose logs`         logs 查看服务日志输出
- `docker-compose build`        build 构建或者重新构建服务 必须在docker-compose.yml 文件同级下
- `docker-compose start`        start 启动指定服务已存在的容器
- `docker-compose stop`         stop 停止已运行的服务的容器

## docker-compose yaml
- `version 指定 docker-compose.yml 文件的写法格式`
- `services 多个容器集合`
- `build 配置构建时，Compose 会利用它自动构建镜像，该值可以是一个路径，也可以是一个对象，用于指定 Dockerfile 参数`
- `command 覆盖容器启动后默认执行的命令`
- `dns 配置 dns 服务器，可以是一个值或列表`
- `dns_search 配置 DNS 搜索域，可以是一个值或列表`
- `environment 环境变量配置，可以用数组或字典两种方式`
- `env_file 从文件中获取环境变量，可以指定一个文件路径或路径列表，其优先级低于 environment 指定的环境变量`
- `expose 暴露端口，只将端口暴露给连接的服务，而不暴露给主机`
- `image 指定服务所使用的镜像`
- `network_mode 设置网络模式`
- `ports 对外暴露的端口定义，和 expose 对应`
- `links 将指定容器连接到当前连接，可以设置别名，避免ip方式导致的容器重启动态改变的无法连接情况`
- `volumes 卷挂载路径`
- `logs 日志输出信息`