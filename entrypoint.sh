#!/bin/bash

mv /tmp/ww/main /main
mv /tmp/ww/handle.conf /etc/supervisor/conf.d/handle.conf
mv /tmp/ww/templates /templates

echo "last commit: 2019/7/8 16:00"

supervisord -c "/etc/supervisor/supervisord.conf"
supervisorctl start all

tail -f /var/log/handle_out.log
