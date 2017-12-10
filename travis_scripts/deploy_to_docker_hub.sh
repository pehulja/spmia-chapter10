#!/usr/bin/env bash
echo "Pushing service docker images to docker hub ...."
echo "PASSWORD $DOCKER_PASSWORD"
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push pehulja/tmx-authentication-service:$BUILD_NAME
docker push pehulja/tmx-licensing-service:$BUILD_NAME
docker push pehulja/tmx-organization-service:$BUILD_NAME
docker push pehulja/tmx-confsvr:$BUILD_NAME
docker push pehulja/tmx-eurekasvr:$BUILD_NAME
docker push pehulja/tmx-zuulsvr:$BUILD_NAME
