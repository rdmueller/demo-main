#!/usr/bin/env bash
function cloneOrPull {
  echo ""
  echo $1
  (git clone --depth 1 "$1" "$2" 2> /dev/null && echo "cloned repo" )|| git -C "$2" pull
}

# duplicate the following two lines for each remote repository
cloneOrPull git@github.com:docToolchain/demo-sub.git build/refs/demo-sub
cp build/refs/demo-sub/src/docs/service.adoc src/docs/services/01_serviceA.adoc

