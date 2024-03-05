FROM python:3.8-slim-buster AS build-stage

WORKDIR /app
RUN apt-get update -yq \
 && apt-get install -yq build-essential wget

RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app/asar
RUN wget https://github.com/RPGHacker/asar/archive/v1.81.tar.gz \
 && tar xfz v1.81.tar.gz \
 && cd asar-1.81 \
 && cmake src \
 && make \
 && mkdir -p /app/tools \
 && cp asar/asar-standalone /app/tools/asar

RUN mkdir -p /app/build \
 && mkdir -p /app/enemies \
 && mkdir -p /app/layout \
 && mkdir -p /app/names \
 && mkdir -p /app/resources \
 && mkdir -p /app/src

COPY build.sh /app/build.sh
COPY build_dev.sh /app/build_dev.sh
COPY build_PAL.sh /app/build_PAL.sh

ARG now

WORKDIR /app
RUN rm -rf build
RUN mkdir -p build
RUN rm -rf enemies
COPY enemies/ enemies/
RUN rm -rf layout
COPY layout/ layout/
RUN rm -rf names
COPY names/ names/
RUN rm -rf resources
COPY resources/ resources/
RUN rm -rf src
COPY src/ src/

RUN ./build_dev.sh
RUN ./build_PAL.sh
RUN ./build.sh

FROM scratch AS export-stage
COPY --from=build-stage /app/build .

