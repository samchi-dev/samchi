# 베이스 이미지로 Python 3.12.2 사용
FROM python:3.12.2

# 로컬의 requirements.txt 파일을 컨테이너에 복사
COPY requirements.txt /requirements.txt

# requirements.txt에 있는 패키지들을 설치
RUN pip install -r /requirements.txt

# 현재 디렉토리의 모든 파일을 /app 디렉토리로 복사
COPY . /app

# 작업 디렉토리를 /app으로 설정
WORKDIR /app

# Gunicorn으로 Flask 앱 실행
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]