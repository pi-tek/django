FROM python

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        vim mariadb-client postgresql-client \
    && rm -rf /var/lib/apt/lists/*

RUN pip install Django
COPY ./app /usr/src/app
#COPY requirements.txt ./
#RUN pip install -r requirements.txt
#COPY . .

WORKDIR /usr/src/app/


EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
