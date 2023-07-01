FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

# Copies the created node_modules from line 9
COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# CLI lines used 
# docker build -t "" .
# docker run -d --publish <id>
# curl.exe localhost:8000