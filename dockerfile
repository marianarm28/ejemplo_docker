FROM python:3.11-slim

workdir /app

copy requirements.txt .
run pip install --no-cache-dir requirements.txt

copy . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]