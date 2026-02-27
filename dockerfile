# Use a lightweight Python base image
FROM python:3.10-slim-buster

WORKDIR /app

# moving required files
COPY requirements.txt .
# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN pip install --no-cache-dir -r requirements.txt


COPY . /app/

# Define the command to run the FastAPI application with Uvicorn
CMD ["python", "-m", "app.cron_job"]