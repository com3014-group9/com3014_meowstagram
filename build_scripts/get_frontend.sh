mkdir -p ./services
cd ./services

[ ! -d "./com3014_frontend" ] && git clone https://github.com/com3014-group9/com3014_frontend.git
cd ./com3014_frontend
git fetch
git pull