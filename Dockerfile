FROM nvcr.io/nvidia/tritonserver:24.01-py3

WORKDIR /opt

RUN git clone https://github.com/all-secure-src/sglang-v300524

WORKDIR /opt/sglang
RUN pip install --upgrade pip && \
    pip install -e "python[all]" && \
    pip install datasets