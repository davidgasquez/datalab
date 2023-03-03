FROM gcr.io/kaggle-images/python:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends aria2

RUN pip3 --disable-pip-version-check --no-cache-dir install \
    duckdb==0.7.1 datafusion==0.8.0 deltalake==0.7.0 pyarrow==11.0.0 \
    && rm -rf /tmp/pip-tmp
