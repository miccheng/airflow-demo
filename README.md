# Airflow Tutorial

Reference: <https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html>

## Getting Started

```bash
mkdir -p ./dags ./logs ./plugins ./config
echo -e "AIRFLOW_UID=$(id -u)" > .env
docker compose up airflow-init
docker compose up
```

## Accessing the environment

### CLI

```bash
docker compose run airflow-worker airflow info
./airflow.sh info
./airflow.sh bash
./airflow.sh python
```

### Web / API

Web Server: <http://localhost:8080>
Username: airflow
Password: airflow

```bash
ENDPOINT_URL="http://localhost:8080/"
curl -X GET  \
    --user "airflow:airflow" \
    "${ENDPOINT_URL}/api/v1/pools"
```

## Cleaning up

```
docker compose down --volumes --rmi all
```
