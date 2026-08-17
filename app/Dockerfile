FROM python:3.14-alpine

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN adduser -D -h /home/user user

WORKDIR /app

RUN apk add --no-cache postgresql-dev gcc musl-dev linux-headers

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh ./

RUN chmod +x ./entrypoint.sh

USER user

ENTRYPOINT ["./entrypoint.sh"]
