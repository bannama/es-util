#!/bin/bash
set -x
host=localhost
if [ "$1" != "" ]; then
   host=$1 
fi
curl -d @cms_template.json -X PUT http://$host:9200/_template/cms_template
curl -d @event_template.json -X PUT http://$host:9200/_template/event_template
curl -d @cms_all_template.json -X PUT http://$host:9200/_template/cms-all_template
