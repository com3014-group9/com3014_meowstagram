mkdir -p ./services
cd ./services

[ ! -d "./com3014_image_storage" ] && git clone https://github.com/com3014-group9/com3014_image_storage.git
cd ./com3014_image_storage
git fetch
git pull