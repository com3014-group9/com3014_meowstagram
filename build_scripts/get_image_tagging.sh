mkdir -p ./services
cd ./services

[ ! -d "./com3014_image_tagging" ] && git clone https://github.com/com3014-group9/com3014_image_tagging.git
cd ./com3014_image_tagging
git fetch
git pull