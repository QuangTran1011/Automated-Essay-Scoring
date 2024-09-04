FROM python:3.9-slim

LABEL maintainer="quangtran"

WORKDIR app/

RUN pip install -r requirements.txt --no-cache-dir

COPY ./requirements.txt /app
COPY ./models /app/models
COPY ./main.py /app
COPY ./request.py /app

EXPOSE 30000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "30000"]

