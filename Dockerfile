FROM python:3.10.8

WORKDIR /api

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8000

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]