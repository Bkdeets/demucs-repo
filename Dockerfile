
# start with a base image# set base image (host OS)
FROM python:3.8-slim-buster

# set the working directory in the container
WORKDIR /code

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
RUN apt-get update
RUN apt-get install -y libsndfile1
RUN apt-get install -y sudo
RUN apt-get install -y ffmpeg
RUN python3 -m pip install -U git+https://github.com/CarlGao4/demucs#egg=demucs
RUN pip3 install certifi

# copy the dependencies file to the working directory
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY /src .

# command to run on container start
CMD [ "python" ,"-u", "./main.py" ]