
## Dockerfile이 있는 곳에서 실행!!
##flask docker에서 실행

docker build -t flask-app .

##flask 포트 매핑 해주기

docker run -p 5000:5000 flask-app
