FROM python:3.9

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./servicios/servicio_1 /app/servicio_1
COPY ./servicios/servicio_2 /app/servicio_2

EXPOSE 8000

CMD ["uvicorn", "service1.main:app", "--host", "0.0.0.0", "--port", "8000"]