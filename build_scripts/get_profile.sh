mkdir -p ./services
cd ./services

[ ! -d "./com3014_profile" ] && git clone https://github.com/com3014-group9/com3014_profile.git
cd ./com3014_profile
git fetch
git pull