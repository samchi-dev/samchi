FROM python:3.12.2

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY . /app

WORKDIR /app

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
