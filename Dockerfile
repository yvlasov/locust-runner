FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y make sudo python python-pip
RUN usermod -aG sudo jenkins
RUN pip install locustio==0.13.5 bzt
RUN echo '%sudo  ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN visudo -c
# drop back to the regular jenkins user - good practice
USER jenkins