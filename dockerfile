FROM ubuntu:latest
COPY system_check.sh  /system_check.sh
RUN chmod +X /system_check.sh
CMD ["/system_check.sh"]
