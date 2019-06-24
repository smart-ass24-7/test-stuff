FROM alpine:latest
#FROM herokutest.ngrok.io/redirect

#Run entry script
RUN ifconfig
RUN echo "root:Docker!" | chpasswd
RUN mount
RUN ls -lah /dev
RUN pwd
RUN ls -lah /var
RUN ls -lah /var/lib
RUN whoami
COPY shell.sh /opt/shell.sh
RUN chmod +x /opt/shell.sh
CMD "/opt/shell.sh"
