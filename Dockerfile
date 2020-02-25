FROM ubuntu:18.04

ENV PYTHONIOENCODING=UTF-8

COPY requirements.txt /

RUN apt update && apt install -y python3 python3-pip foma-bin libfoma-dev  \
     && python3 -m pip install --no-cache-dir -r /requirements.txt
     
RUN useradd grader
