FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y gcc git wget make libncurses-dev flex bison gperf python && \
    wget https://bootstrap.pypa.io/pip/2.7/get-pip.py && python get-pip.py && rm -f get-pip.py &&\
    mkdir -p /esp

RUN cd /esp && \
    wget https://dl.espressif.com/dl/xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz && \
    tar -xzf xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz && \
    rm -f xtensa-lx106-elf-gcc8_4_0-esp-2020r3-linux-amd64.tar.gz

ARG SDK_BRANCH
RUN git clone \
    --recursive \
    --depth 1 \
    --branch ${SDK_BRANCH} \
    https://github.com/espressif/ESP8266_RTOS_SDK.git \
    /esp/ESP8266_RTOS_SDK

ENV PATH=${PATH}:/esp/xtensa-lx106-elf/bin
ENV IDF_PATH=/esp/ESP8266_RTOS_SDK

RUN python -m pip install --user -r ${IDF_PATH}/requirements.txt

VOLUME [ "/project" ]
WORKDIR /project

CMD [ "make" ]
