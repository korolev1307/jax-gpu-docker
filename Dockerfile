FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04

RUN apt-get update && \
    apt-get install -y \
        git \
        vim \
        htop \
        python3 \
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /code

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install "jax[cuda12]" \
        -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html && \
    python3 -m pip install numpy

COPY *.py /code/

CMD ["python3", "spmd_mnist_classifier.py"]