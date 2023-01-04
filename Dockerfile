FROM gcr.io/kaggle-images/python:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends aria2

RUN pip3 --disable-pip-version-check --no-cache-dir install \
    duckdb==0.6.1 datafusion==0.7.0 deltalake==0.6.4 pyarrow==10.0.1 \
    && rm -rf /tmp/pip-tmp
