image_name='gorae-judge'
container_name='gorae-judge-container'
port=9000

docker stop $container_name
docker rm $container_name
docker image rm $image_name

docker build --no-cache -t $image_name .
docker run -it -d --name $container_name -p $port:$port $image_name