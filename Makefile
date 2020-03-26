REPO=odise/${CONTAINER_NAME}
CONTAINER_NAME=terraform-concourse-resource
CONTAINER_TAG=latest

build: 
	docker build -t ${CONTAINER_NAME} -f Dockerfile .

tag: 
	docker tag ${CONTAINER_NAME}:${CONTAINER_TAG} ${REPO}:${CONTAINER_TAG}

tag-version:
	# set TAG environment variable to specify specific tags
	docker tag ${CONTAINER_NAME}:${CONTAINER_TAG} ${REPO}:${TAG}

push:
	docker push ${REPO}:${CONTAINER_TAG}

clean_images:
	docker rmi $(docker images -f "dangling=true" -q