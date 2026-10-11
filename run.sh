#!/bin/bash
podman run -d\
 --name hms-db\

 --restart always \
 --env-file db.env \
 -v pgdata:/var/lib/postgresql/data \
 -p 5432:5432 \
 postgres:15-alpine
