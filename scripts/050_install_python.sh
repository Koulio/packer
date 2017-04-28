#!/bin/bash

# INSTALL PYTHON AND SUPERVISORD - on some systems some of the below does not exist.
yum install python26-pip || echo python26-pip installed
yum install python-pip || echo python-pip installed
yum install python-devel || echo python-devel installed
yum install python-setuptools || echo python-setuptools installed

source /etc/profile

easy_install --upgrade pip==$PIP_VER