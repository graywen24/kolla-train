#!/bin/bash

set -o errexit
set -o pipefail

/usr/bin/rsync -az -e 'ssh -i /var/lib/keystone/.ssh/id_rsa -p 8023 -F /var/lib/keystone/.ssh/config' --delete /etc/keystone/fernet-keys/ keystone@10.71.104.71:/etc/keystone/fernet-keys
/usr/bin/rsync -az -e 'ssh -i /var/lib/keystone/.ssh/id_rsa -p 8023 -F /var/lib/keystone/.ssh/config' --delete /etc/keystone/fernet-keys/ keystone@10.71.104.72:/etc/keystone/fernet-keys
