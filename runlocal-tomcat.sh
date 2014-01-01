#!/bin/bash
# Defaults to port 8080

export DATABASE_URL=postgres://postgres:$1@localhost:5432/datajpa
mvn clean tomcat7:run -Dspring.profiles.active=prod
