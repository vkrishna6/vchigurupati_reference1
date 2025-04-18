FROM redhat/ubi9
LABEL description='Practice test - docker instructions and sample application'
#MAINTAINER vamsikrishna_chigurupati
USER root
RUN dnf update -y \
    && dnf install java -y \
    && dnf install -y tar \
    && curl -L https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.6.tgz > /opt/apache-jmeter-5.6.tgz \
    && ls -ltr /opt/apache* \
    && mkdir -pv /opt/jmeter56 \
    && cd /opt/jmeter56 \
    && tar -xvf /opt/apache-jmeter-5.6.tgz \
    && rm /opt/apache-jmeter-5.6.tgz \
    && chmod -R 777 /opt/jmeter56/apache-jmeter-5.6 \
    && chown -R 1001:1001 /opt/jmeter56/apache-jmeter-5.6
USER 1001
WORKDIR /opt/jmeter56/
ENTRYPOINT ["tail", "-f", "/dev/null"]