docker stop app
docker rm app
docker rmi -f juliermeh/app

docker stop banco
docker rm banco
docker rmi -f app/banco
