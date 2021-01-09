FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

RUN pip install --upgrade pip && \
    pip install --no-cache-dir pandas && \
    pip install --no-cache-dir jupyterlab && \
    apt-get update && \
    apt-get install joe && \
    apt-get install htop
        
COPY ./app /app
