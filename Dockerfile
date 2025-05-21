
FROM python:3.8

WORKDIR /opt/flask_insurance

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY model.py .
COPY flaskapp.py .
RUN mkdir templates
COPY index.html templates
COPY result.html templates

RUN python3.8 model.py


CMD ["python", "flaskapp.py"]
