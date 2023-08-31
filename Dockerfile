FROM python:3.8
LABEL maintainer="Ahmed Alassaf"
COPY . /app
WORKDIR /app
EXPOSE 3111
RUN pip install -r requirements.txt
CMD [ "python", "init_db.py" ]
CMD [ "python", "app.py" ]
