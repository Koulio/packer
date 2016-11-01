#!/bin/bash -x

export SUPERVISORD_VERSION="3.2.0"

export SUPERVISORD_RUNDIR=${SUPERVISORD_RUNDIR:-/var/run}
export SUPERVISORD_LOGDIR=${SUPERVISORD_LOGDIR:-/var/log/supervisord}
export SUPERVISORD_MINFDS=${SUPERVISORD_MINFDS:-10000}
export SUPERVISORD_WORK_DIR=${SUPERVISORD_WORK_DIR:-/opt}
export SUPERVISORD_MINPROCS=${SUPERVISORD_MINPROCS:-200}
export SUPERVISORD_UNIX_HTTP_SERVER_FILE=${SUPERVISORD_UNIX_HTTP_SERVER_FILE:-/var/run/supervisor.sock}
