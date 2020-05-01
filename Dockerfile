FROM gliderlabs/logspout:master
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
  # && echo "Asia/Shanghai" > /etc/timezone

ENV SYSLOG_FORMAT rfc3164
