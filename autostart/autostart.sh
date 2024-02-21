#!/bin/bash

echo-green() {
  echo -e "\033[0;92m" $@ "\033[0m"
}

# echo-green "Hello from autostart.sh"

# If a systemtap tracer module if available, use it to trace /usr/bin/autostart
if [ -e "/host/tmp/tracer.ko" ]; then
  # Workaround the detection of kprobes optimization capabilities
  export STAP_PR13193_OVERRIDE=1
  # Route UDP logs via the default IP interface (it must be ethernet)
  DEFAULT_ROUTE=`ip route show default | awk '/dev/ {print $5}'`
  # Wrap autostart with a systemtap run. This sets target() to autostart's pid
  TRACER="staprun /host/tmp/tracer.ko interface=${DEFAULT_ROUTE} -c"
fi

$TRACER /usr/bin/autostart
