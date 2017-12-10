#!/usr/bin/env bash
echo "Launching $BUILD_NAME IN AMAZON ECS"

ecs-cli configure profile --profile-name profile_name --access-key $AWS_ACCESS_KEY --secret-key $AWS_SECRET_KEY
ecs-cli configure --cluster spmia-tmx-dev --region us-east-2
ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
