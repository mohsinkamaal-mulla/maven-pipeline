#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@65.2.33.153:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod-user@65.2.33.153:/tmp/publish
ssh -i /opt/prod prod-user@65.2.33.153 "/tmp/publish"
