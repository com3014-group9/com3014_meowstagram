build-all: build-auth build-frontend build-profile build-image-storage build-image-tagging
start-all: start-auth start-frontend start-profile start-image-storage start-image-tagging
stop-all: stop-auth stop-frontend stop-profile stop-image-tagging stop-image-storage
test-all: test-auth test-frontend test-profile test-image-storage test-image-tagging
clean-all: clean-auth clean-frontend clean-profile clean-image-tagging clean-image-storage


# AUTHENTICATION
build-auth:
	$(info Building Auth...)
	sh ./build_scripts/get_auth.sh
	docker compose -f ./services/com3014_auth/docker-compose.yml build

start-auth:
	$(info Starting Auth...)
	docker compose -f ./services/com3014_auth/docker-compose.yml up -d

stop-auth: 
	$(info Stopping Auth...)
	docker compose -f ./services/com3014_auth/docker-compose.yml down

test-auth:
	$(info Testing Auth...)
	docker compose -f ./services/com3014_auth/docker-compose.yml run auth_server python3 -m pytest

clean-auth: 
	$(info Cleaning Auth...)
	docker compose -f ./services/com3014_auth/docker-compose.yml rm -f -s -v
	rm -rf ./services/com3014_auth


# FRONTEND
build-frontend:
	$(info Building Frontend...)
	sh ./build_scripts/get_frontend.sh
	docker compose -f ./services/com3014_frontend/docker-compose.yml build

start-frontend:
	$(info Starting Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml up -d --build

stop-frontend:
	$(info Stopping Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml down

test-frontend:
	$(info Testing Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml run frontend npx vitest run --dom

clean-frontend:
	$(info Cleaning Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml rm -f -s -v
	rm -rf ./services/com3014_frontend


# IMAGE STORAGE
build-image-storage:
	$(info Building Image Storage...)
	sh ./build_scripts/get_image_storage.sh
	docker compose -f ./services/com3014_image_storage/docker-compose.yml build

start-image-storage:
	$(info Starting Image Storage...)
	docker compose -f ./services/com3014_image_storage/docker-compose.yml up -d

stop-image-storage:
	$(info Stopping Image Storage...)
	docker compose -f ./services/com3014_image_storage/docker-compose.yml down

test-image-storage:
	$(info Testing Image Storage...)
	docker compose -f ./services/com3014_image_storage/docker-compose.yml run imager-app python3 -m pytest

clean-image-storage:
	$(info Cleaning Image Storage...)
	docker compose -f ./services/com3014_image_storage/docker-compose.yml rm -f -s -v
	rm -rf ./services/com3014_image_storage


# PROFILE
build-profile:
	$(info Building Profile...)
	sh ./build_scripts/get_profile.sh
	docker compose -f ./services/com3014_profile/docker-compose.yml build

start-profile:
	$(info Starting Profile...)
	docker compose -f ./services/com3014_profile/docker-compose.yml up -d

stop-profile:
	$(info Stopping Profile...)
	docker compose -f ./services/com3014_profile/docker-compose.yml down

test-profile:
	$(info Testing Profile...)
	docker compose -f ./services/com3014_profile/docker-compose.yml run profiler-app python3 -m pytest

clean-profile:
	$(info Cleaning Profile...)
	docker compose -f ./services/com3014_profile/docker-compose.yml rm -f -s -v
	rm -rf ./services/com3014_profile


# IMAGE TAGGING
build-image-tagging:
	$(info Building Image Tagging...)
	sh ./build_scripts/get_image_tagging.sh
	docker compose -f ./services/com3014_image_tagging/docker-compose.yml build

start-image-tagging:
	$(info Starting Image Tagging...)
	docker compose -f ./services/com3014_image_tagging/docker-compose.yml up -d

stop-image-tagging:
	$(info Stopping Image Tagging...)
	docker compose -f ./services/com3014_image_tagging/docker-compose.yml down

test-image-tagging:
	$(info Testing Image Tagging...)
	docker compose -f ./services/com3014_image_tagging/docker-compose.yml run com3014imagetagging python3 -m pytest

clean-image-tagging:
	$(info Cleaning Image Tagging...)
	docker compose -f ./services/com3014_image_tagging/docker-compose.yml rm -f -s -v
	rm -rf ./services/com3014_image_tagging