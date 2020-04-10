```shell script
docker build -t jacarlianda/fastdfs:v1 -f Dockerfile .
```


```shell script
docker run -d -e new_trackerd=192.168.50.122 -p 8888:8888 -p 22122:22122 -p 23000:23000 -p 8011:80 --name fastdfs  jacarlianda/fastdfs:v1
```

```shell script
docker exec -it fastdfs fdfs_test /etc/fdfs/client.conf upload /var/log/yum.log
```