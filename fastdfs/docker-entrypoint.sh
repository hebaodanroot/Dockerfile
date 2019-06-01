#!/bin/sh
[[ x${TRACKER_ADDR1} != x ]] && sed -i "s%tracker_server=0.0.0.0.*%tracker_server=${TRACKER_ADDR1}%" ${FDFS_HOME}/etc/client.conf ${FDFS_HOME}/etc/storage.conf /etc/fdfs/mod_fastdfs.conf
[[ x${TRACKER_ADDR2} != x ]] && sed -i "s%#tracker_server=0.0.0.0.*%tracker_server=${TRACKER_ADDR2}%" ${FDFS_HOME}/etc/client.conf ${FDFS_HOME}/etc/storage.conf /etc/fdfs/mod_fastdfs.conf
[[ x${TRACKER_ADDR3} != x ]] && sed -i "s%#tracker_server=0.0.0.0.*%tracker_server=${TRACKER_ADDR3}%" ${FDFS_HOME}/etc/client.conf ${FDFS_HOME}/etc/storage.conf /etc/fdfs/mod_fastdfs.conf
[[ "$SERVER_TYPE" =~ "tracker" || "$SERVER_TYPE" = "" ]] && ${FDFS_HOME}/bin/fdfs_trackerd ${FDFS_HOME}/etc/tracker.conf
[[ "$SERVER_TYPE" =~ "storage" || "$SERVER_TYPE" = "" ]] && ${FDFS_HOME}/bin/fdfs_storaged ${FDFS_HOME}/etc/storage.conf
/opt/nginx/sbin/nginx
tail -f /dev/null