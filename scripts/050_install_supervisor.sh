#!/bin/bash -x

set -o errexit

source $(dirname $0)/export_env_vars.sh

source /etc/profile

python -m pip install supervisor==$SUPERVISORD_VERSION

# fix random failures
[ -f /usr/bin/supervisorctl  ] || ln -sf /usr/local/bin/supervisorctl /usr/bin/supervisorctl

mkdir -p /var/log/supervisord/
mkdir -p /etc/sysconfig/

cp $(dirname $0)/data/supervisord.init /etc/rc.d/init.d/supervisord
chmod +x /etc/rc.d/init.d/supervisord
chkconfig --add supervisord
