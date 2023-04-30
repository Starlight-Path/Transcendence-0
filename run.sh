docker build -t t0:latest .
docker run --rm -v $(pwd):/app/output t0:latest
