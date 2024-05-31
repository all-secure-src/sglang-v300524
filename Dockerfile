FROM nvcr.io/nvidia/tritonserver:24.01-py3

WORKDIR /opt

# Copy the code from the local directory to the container
COPY python/sglang /opt/sglang

WORKDIR /opt/sglang
RUN pip install --upgrade pip && \
    pip install -e ".[all]" && \
    pip install datasets