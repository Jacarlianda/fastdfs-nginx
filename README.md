# FastDFS-Nginx Docker 

[fastdfs](https://github.com/happyfish100/fastdfs)


[ygqygq2/fastdfs-nginx](https://hub.docker.com/r/ygqygq2/fastdfs-nginx)

Usage:

```
docker run -dti --network=host --name tracker -v /var/fdfs/tracker:/var/fdfs ygqygq2/fastdfs-nginx tracker

docker run -dti --network=host --name storage0 -e TRACKER_SERVER=10.1.5.85:22122 -v /var/fdfs/storage0:/var/fdfs ygqygq2/fastdfs-nginx storage

docker run -dti --network=host --name storage1 -e TRACKER_SERVER=10.1.5.85:22122 -v /var/fdfs/storage1:/var/fdfs ygqygq2/fastdfs-nginx storage

docker run -dti --network=host --name storage2 -e TRACKER_SERVER=10.1.5.85:22122 -e GROUP_NAME=group2 -e PORT=22222 -v /var/fdfs/storage2:/var/fdfs ygqygq2/fastdfs-nginx storage
```
