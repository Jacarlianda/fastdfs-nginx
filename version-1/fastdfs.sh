#!/bin/bash

new_trackerd=$FASTDFS_IPADDR
old_trackerd="ipaddr"

sed -i "s/$old_trackerd/$new_trackerd/g" /etc/fdfs/client.conf
sed -i "s/$old_trackerd/$new_trackerd/g" /etc/fdfs/storage.conf
sed -i "s/$old_trackerd/$new_trackerd/g" /etc/fdfs/mod_fastdfs.conf

cat  /etc/fdfs/client.conf > /etc/fdfs/client.txt
cat  /etc/fdfs/storage.conf >  /etc/fdfs/storage.txt
cat  /etc/fdfs/mod_fastdfs.conf > /etc/fdfs/mod_fastdfs.txt

mv /usr/local/nginx/conf/nginx.conf /usr/local/nginx/conf/nginx.conf.t
cp /etc/fdfs/nginx.conf /usr/local/nginx/conf

echo "start trackerd"
/etc/init.d/fdfs_trackerd start

echo "start storage"
/etc/init.d/fdfs_storaged start

echo "start nginx"
/usr/local/nginx/sbin/nginx

tail -f  /dev/null