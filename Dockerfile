FROM python:3.12

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir setuptools wheel

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
