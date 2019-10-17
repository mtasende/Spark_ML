#!/bin/bash

/opt/spark/sbin/start-master.sh
firefox http://localhost:8080
/opt/spark/sbin/start-slave.sh spark://Y4309353:7077

echo "Cluster ready!"

