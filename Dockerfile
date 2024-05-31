FROM nvcr.io/nvidia/tritonserver:24.01-py3

WORKDIR /opt

# Copy the code from the local directory to the container
COPY . /opt/sglang

WORKDIR /opt/sglang

# Upgrade pip first
RUN pip install --upgrade pip

# Install the sglang package with all extras
RUN pip install -e ".[all]"

# Install the datasets package
RUN pip install datasets

# To verify the installations, let's add commands to list the installed packages
RUN pip list