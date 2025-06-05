FROM python:3.11-alpine3.20

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN adduser -D -h /home/user user

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh ./

RUN chmod +x ./entrypoint.sh

USER user

ENTRYPOINT ["./entrypoint.sh"]
