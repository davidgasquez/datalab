FROM gcr.io/kaggle-images/python:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends aria2

RUN pip3 --disable-pip-version-check --no-cache-dir install \
    duckdb \
    && rm -rf /tmp/pip-tmp
