npm create vite@latest

docker compose up -d

docker exec -it django /bin/bash

python manage.py migrate

exit

git pull

docker compose up -d

docker exec -it front /bin/sh

exit 

docker compose down --volumes --rmi all

#Build Frontend
```
docker build \
  -t front \
  --build-arg VITE_API_BASE_URL=${VITE_API_BASE_URL} \
  ./vite-django
```

#Build Backend
```
docker build -t django "./Django API/atbapi"
```

# Білдимо локально. Закидаємо образи на docker hub
# Буде працювати команад docker compose pull
# Піднімає образи за допомгою docker compose up -d