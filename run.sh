docker build -t app/banco ./banco
docker run -p 5433:5432 --name banco -d app/banco 

cd app && mvn clean package && cd ..
docker build -t juliermeh/app .
docker run -p 8080:8080 --name app -d --link banco:host-banco juliermeh/app
