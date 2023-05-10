FROM mcr.microsoft.com/devcontainers/python:3.11

# Install aria2
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends aria2

# Copy requirements.txt to the container
COPY requirements.txt /tmp/requirements.txt

# Install requirements
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/requirements.txt \
    && rm -rf /tmp/requirements.txt
