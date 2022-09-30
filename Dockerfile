FROM jenkins/jenkins

USER root

RUN apt-get update && \
    apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
    pip install ansible && \
    pip cache purge

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker jenkins
USER jenkins
