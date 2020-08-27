#!/bin/bash

##可用环境变量
ES_URL=${ES_URL:-}
ES_USERNAME=${ES_USERNAME:-}
ES_PASSWORD=${ES_PASSWORD:-}

config_set(){

	sed -i "s/#server.host:.*/server.host: \"0\"/" /opt/kibana/config/kibana.yml
	[[ -n ${ES_URL} ]] && sed -i "s!#elasticsearch.hosts:.*!elasticsearch.hosts: [${ES_URL}]!" /opt/kibana/config/kibana.yml
	[[ -n ${ES_USERNAME} ]] && sed -i "s/#elasticsearch.username:.*/elasticsearch.username: ${ES_USERNAME}/" /opt/kibana/config/kibana.yml
	[[ -n ${ES_PASSWORD} ]] && sed -i "s/#elasticsearch.password:.*/elasticsearch.password: ${ES_PASSWORD}/" /opt/kibana/config/kibana.yml

}

config_set
exec "$@"