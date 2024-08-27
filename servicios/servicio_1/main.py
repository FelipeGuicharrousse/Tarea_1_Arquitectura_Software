from fastapi import FastAPI
import logging

app = FastAPI()

logging.basicConfig(
    filename='/var/log/fastapi-service1.log',
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)

@app.get("/")
def read_root():
    logging.info("Se inicia el servicio 1")
    return {"Mensaje": "Servicio_1"}
