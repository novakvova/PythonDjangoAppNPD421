@echo off

REM ==== WEB ====
cd vite-django
docker build -t vite-django --build-arg VITE_API_BASE_URL=http://63.177.248.142:8361 .
docker tag vite-django:latest novakvova/vite-django:latest
docker push novakvova/vite-django:latest

REM ==== API ====
cd ..\Django API\atbapi
docker build -t atbapi .
docker tag atbapi:latest novakvova/atbapi:latest
docker push novakvova/atbapi:latest

echo DONE
pause
