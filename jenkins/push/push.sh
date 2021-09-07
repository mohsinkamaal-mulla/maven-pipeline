#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u mohsinkamaal -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG mohsinkamaal/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push mohsinkamaal/$IMAGE:$BUILD_TAG
