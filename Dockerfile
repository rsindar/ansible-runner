# Create a Docker image with Ansible and YAML linter
FROM python:3-alpine
COPY requirements.txt /tmp/
RUN apk add --no-cache build-base; python3 -m pip install -r /tmp/requirements.txt; rm -f /tmp/requirements.txt; apk del build-base
