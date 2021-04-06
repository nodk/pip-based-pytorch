ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN pip install ${DEPS} -f https://download.pytorch.org/whl/torch_stable.html