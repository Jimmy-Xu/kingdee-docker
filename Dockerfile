FROM ubuntu:16.04
MAINTAINER Jimmy Xu <jimmy@hyper.sh>

ENV APP_HOME /usr/eas705s
WORKDIR $APP_HOME

ADD assets/kylin.tar $APP_HOME
ADD assets/jdk-8u171-linux-x64.tar $APP_HOME/eas

RUN chmod +x $APP_HOME/eas/admin/adminserver.sh;\
    ln -s $APP_HOME/eas/jdk1.8.0_171 $APP_HOME/eas/ibm-jdk

EXPOSE 10060
EXPOSE 10061
EXPOSE 10688

WORKDIR $APP_HOME/eas/admin
CMD ./adminserver.sh

