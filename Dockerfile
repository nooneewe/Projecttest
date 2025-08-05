FROM python:3.13-slim

WORKDIR /app
COPY . /app
RUN apt-get update && \
    apt-get install -y libgl1 libglib2.0-0 && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
