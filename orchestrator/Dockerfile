FROM apache/airflow:2.1.4-python3.9

WORKDIR /opt/airflow
COPY ./requirements.txt requirements.txt

RUN pip install -r /opt/airflow/requirements.txt