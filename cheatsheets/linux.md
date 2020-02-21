The most common `Linux` commands

# Compression

## Uncompress

- `tar -xzf *.tar.gz`   un-compress tar.gz file
- `gunzip *.gz`         un-compress .gz file

## Compress

- `tar -czvf result.tar.gz target/folder/1 target/folder/2`

# Network

- `nslookup somewhere.com some.dns.server`
- `nc -v target.ip.address targetport`
- `dig`

Display routing table

- `route -n`
- `netstat -rn`
- `ip route list`

# Process

- `jobs -l`
- `fg %1`
- `ctrl + z` put process to background
- `kill -1` kill -SIGHUP 1000 重新加载 
- `kill -9` SIGKILL 立即删除
- `kill -15` SIGTERM 正常终止


# Groups

- `groups` check the groups
- `cat /etc/group` 列出所有的group
- `getent group developers` 找出谁在group里


# SSH

- `chmod 0700 ~/.ssh` 一定要改permission 不然用不了
- `chmod 0600 ~/.ssh/authorized_keys` 一定要改permission 不然用不了

- `eval`