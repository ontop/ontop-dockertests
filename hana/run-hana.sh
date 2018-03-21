docker run -p 39013:39013 -p 39017:39017 -p 39041-39045:39041-39045 -p 1128-1129:1128-1129 -p 59013-59014:59013-59014 -v /data/saphana:/hana/mounts \
-v /tmp/hanapwd:/tmp/hanapwd \
--ulimit nofile=1048576:1048576 \
--sysctl kernel.shmmax=1073741824 \
--sysctl net.ipv4.ip_local_port_range='40000 60999' \
--sysctl kernel.shmmni=524288 \
--sysctl kernel.shmall=8388608 \
--name ontop_hana_running \
store/saplabs/hanaexpress:2.00.021.00.20171030.1 \
--passwords-url file:///tmp/hanapwd/saphana.json \
--agree-to-sap-license
