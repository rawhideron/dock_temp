FROM centos:7

RUN yum -y install openssh-server


RUN ssh-keygen -A

RUN yum -y install mysql

RUN yum -y install epel-release && \
    yum -y install python3-pip && \
    yum -y install sshpass && \
    yum -y install vim-minimal.x86_64 && \
    yum -y install pip3 install awscli

RUN yum -y install java-1.8.0-openjdk
RUN yum -y install maven


RUN yum -y install git
CMD /usr/sbin/sshd -D
© 2021 GitHub, Inc.
