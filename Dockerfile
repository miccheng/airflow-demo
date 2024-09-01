# In case we need to custom build something
# Reference: https://airflow.apache.org/docs/docker-stack/build.html

FROM apache/airflow:2.10.0

# For installing packages
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  vim \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
USER airflow

ADD requirements.txt .
RUN pip install apache-airflow==${AIRFLOW_VERSION} -r requirements.txt