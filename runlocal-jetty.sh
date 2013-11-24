#!/bin/bash

export DATABASE_URL=postgres://postgres:$1@localhost:5432/datajpa
mvn clean jetty:run -Djetty.port=8980 -Dspring.profiles.active=prod
