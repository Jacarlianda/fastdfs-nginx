```shell script
docker build -t jacarlianda/fastdfs:v1 -f Dockerfile .
```


```shell script
docker run -d -e FASTDFS_IPADDR=192.168.1.234 -p 8888:8888 -p 22122:22122 -p 23000:23000 -p 8011:80 --name test-fast 镜像id/镜像名称
```

```shell script
docker exec -it 0e27d0088a90 fdfs_test version-1/conf/client.conf
docker exec -it 0e27d0088a90 fdfs_test version-1/conf/client.conf upload /var/log/yum.log
docker exec -it 0e27d0088a90 fdfs_test /etc/fdfs/client.conf upload /var/log/yum.log
docker exec -it 0e27d0088a90 /bin/bash
docker exec -it 0e27d0088a90 fdfs_test /etc/fdfs/client.conf upload /var/log/yum.log
```