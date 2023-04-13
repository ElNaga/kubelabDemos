FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV APP_FILE app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0","--port=5000"]