FROM python:3.6-slim-stretch

RUN apt update
RUN apt install -y python3-dev gcc

ADD requirements.txt requirements.txt
ADD columns.json columns.json
ADD weather_prediction.pkl weather_prediction.pkl
ADD app.py app.py

# Install required libraries
RUN pip install -r requirements.txt

EXPOSE 8008

# Start the server
CMD ["python", "app.py"]
