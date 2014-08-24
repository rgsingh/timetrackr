#!/bin/bash

export DATABASE_URL=postgres://postgres:$1@localhost:5432/datajpa
mvn embedded-glassfish:run -Dglassfish.embedded.tmpdir=target/gfs-timetrackr -Dspring.profiles.active=prod 

