FROM ubuntu

WORKDIR /workspace

RUN apt-get update \
    && apt install make -y\
    && apt install python3 -y\
    && apt -y install python3-pip\
    && pip3 install jupyter

RUN apt install openjdk-11-jdk-headless -qq -y\
    && apt install scala -y\
    && pip3 install py4j\
    && pip3 install pyspark

COPY . /workspace/

RUN python3 setup_java.py

RUN make install

EXPOSE 8050

ENTRYPOINT ["jupyter"]

CMD ["notebook", "--ip", "0.0.0.0", "--port", "8050", "--no-browser", "--allow-root"]
