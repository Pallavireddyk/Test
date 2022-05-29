from alpine:latest

RUN apk add --no-cache python3

RUN apk add  --no-cache py3-pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache install flask

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]