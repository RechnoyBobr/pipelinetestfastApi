FROM python:3.9

WORKDIR /fastApi

COPY ./requirements.txt /fastApi/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /fastApi/requirements.txt

COPY ./app /fastApi/app

CMD [ "uvicorn", "app.main:app","--reload","--host","0.0.0.0","--port","8484" ]