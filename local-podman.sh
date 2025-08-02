# Check if aufbereitung-db container exists
POD_NAME=fluxion-db
DB_NAME=fluxion_dev
if podman container exists $POD_NAME; then
  # Check if it's running
  if [ "$(podman inspect -f '{{.State.Running}}' $POD_NAME)" = "true" ]; then
    echo "$POD_NAME is already running."
    exit 0
  else
    echo "$POD_NAME exists but is stopped. Restarting..."
    podman start $POD_NAME
    exit 0
  fi
else
  echo "Starting new $POD_NAME container..."
  podman run --name $POD_NAME -e POSTGRES_DB=$DB_NAME -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
fi
