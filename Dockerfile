FROM python:3.8
 
WORKDIR /code
 
COPY ./requirements.txt /code/requirements.txt
 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
 
COPY ./app.py /code/app.py
COPY ./uvicorn_serve.py /code/uvicorn_serve.py

cmd ["python", "uvicorn_serve.py"]