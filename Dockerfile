FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

CMD ["python", "/app/django_project/manage.py", "runserver", "0.0.0.0:8000"]
