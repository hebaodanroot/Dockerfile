FROM centos:7.5.1804

LABEL name="Centos7 Kibana"

ENV KIBANA_HOME=/opt/kibana PATH=$PATH:/opt/kibana/bin

RUN mkdir -p /opt/kibana/data /opt/kibana/logs && \
    kibana_down_url='https://mirrors.huaweicloud.com/kibana' && \
    kibana_ver=6.8.11 && \
    useradd kibana && \
    echo Downloading kibana-${kibana_ver}.tar.gz... && \
    curl -Ls -o /tmp/kibana.tar.gz ${kibana_down_url}/${kibana_ver}/kibana-${kibana_ver}-linux-x86_64.tar.gz && \
    curl -Ls -o /usr/bin/gosu "https://download.fastgit.org/tianon/gosu/releases/download/1.12/gosu-amd64" && \
    chmod a+x /usr/bin/gosu && \
    tar zxf /tmp/kibana.tar.gz --strip-components 1 -C /opt/kibana && \
    rm -rf /tmp/kibana.tar.gz && \
    ln -sfn /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	chown -R kibana.kibana /opt/kibana
	
ADD docker-entrypoint.sh /opt/kibana/bin/docker-entrypoint.sh

RUN chmod +x /opt/kibana/bin/docker-entrypoint.sh

WORKDIR /opt/kibana

EXPOSE 5601

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["kibana"]