FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y build-essential

COPY requirements.txt .
RUN python3 -m pip install --upgrade pip setuptools
RUN pip3 install --ignore-installed -r requirements.txt

WORKDIR /nfs/
