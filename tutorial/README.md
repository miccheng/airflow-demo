# Tutorial Notes

Reference: <https://airflow.apache.org/docs/apache-airflow/stable/tutorial/fundamentals.html>

## Command Line Metadata Validation

```bash
# initialize the database tables
airflow db migrate

# print the list of active DAGs
airflow dags list

# prints the list of tasks in the "tutorial" DAG
airflow tasks list tutorial

# prints the hierarchy of tasks in the "tutorial" DAG
airflow tasks list tutorial --tree
```

## Testing

```bash
# command layout: command subcommand [dag_id] [task_id] [(optional) date]

# testing print_date
airflow tasks test tutorial print_date 2015-06-01

# testing sleep
airflow tasks test tutorial sleep 2015-06-01

# testing templated
airflow tasks test tutorial templated 2015-06-01
```
