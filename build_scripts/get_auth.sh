mkdir -p ./services
cd ./services

[ ! -d "./com3014_auth" ] && git clone https://github.com/com3014-group9/com3014_auth.git
cd ./com3014_auth
git fetch
git pull