FROM python:3.9

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./services/service1 /app/service1
COPY ./services/service2 /app/service2

EXPOSE 8000

CMD ["uvicorn", "service1.main:app", "--host", "0.0.0.0", "--port", "8000"]
