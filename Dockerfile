FROM python:3.9

RUN pip install pandas

WORKDIR /app

COPY 01-docker-terraform/2_docker_sql/pipeline.py pipeline.py

ENTRYPOINT ["python", "pipeline.py"]
