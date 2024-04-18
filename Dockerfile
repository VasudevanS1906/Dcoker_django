FROM python:3.9

ENV PYTHONUNBUFFERED 1

WORKDIR /django_project

COPY requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt

COPY . /django_project/

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
