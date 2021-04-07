ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apt-get update && apt-get install -y\
    python3 python3-pip\
 && rm -rf /var/lib/apt/lists/*

ARG DEPS=torch
RUN pip3 install --no-cache-dir ${DEPS} -f https://download.pytorch.org/whl/torch_stable.html