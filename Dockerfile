FROM informationsea/centos7-xrdp:latest

USER root

ADD CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
ADD code-stable-1587060099.tar.gz /opt/
ADD vscode.sh /usr/local/bin/

RUN yum clean all && yum makecache && \
    yum install -y python3 && \
    yum install -y python3-pip && \
    yum install -y nodejs && \
    npm set registry https://r.npm.taobao.org && \
    npm install -g vue && \
    yum install -y libXScrnSaver && \
    ln -s /usr/local/bin/vscode.sh /usr/bin/vscode

EXPOSE 3389