build-all: build-auth build-frontend build-image-storage build-profile
start-all: start-auth start-frontend start-image-storage start-profile
stop-all: stop-auth stop-frontend stop-image-storage stop-profile
clean-all: clean-auth clean-frontend clean-image-storage clean-profile


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

clean-auth: 
	$(info Cleaning Auth...)
	docker compose -f ./services/com3014_auth/docker-compose.yml rm -f -s -v
	rm -r ./services/com3014_auth


# FRONTEND
build-frontend:
	$(info Building Frontend...)
	sh ./build_scripts/get_frontend.sh
	docker compose -f ./services/com3014_frontend/docker-compose.yml build

start-frontend:
	$(info Starting Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml up -d

stop-frontend:
	$(info Stopping Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml down

clean-frontend:
	$(info Cleaning Frontend...)
	docker compose -f ./services/com3014_frontend/docker-compose.yml rm -f -s -v
	rm -r ./services/com3014_frontend


# IMAGE STORAGE
build-image-storage:
	$(info Building Image Storage...)
	sh ./build_scripts/get_image_storage.sh
	docker compose -f ./services/com3014_image_storage/file_server/docker-compose.yml build

start-image-storage:
	$(info Starting Image Storage...)
	docker compose -f ./services/com3014_image_storage/file_server/docker-compose.yml up -d

stop-image-storage:
	$(info Stopping Image Storage...)
	docker compose -f ./services/com3014_image_storage/file_server/docker-compose.yml down

clean-image-storage:
	$(info Cleaning Image Storage...)
	docker compose -f ./services/com3014_image_storage/file_server/docker-compose.yml rm -f -s -v
	rm -r ./services/com3014_image_storage


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

clean-profile:
	$(info Cleaning Profile...)
	docker compose -f ./services/com3014_profile/docker-compose.yml rm -f -s -v
	rm -r ./services/com3014_profile
