import mlflow

with mlflow.start_run():
    mlflow.log_param("greeting", "Hello, DevOps!")
    mlflow.log_metric("dummy_score", 1.0)

print("Experiment logged successfully.")
