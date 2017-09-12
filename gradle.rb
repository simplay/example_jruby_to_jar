#!/bin/sh

## Hack our GEM_HOME to make sure that the `rubygems` support can find our
# jars and unpacked gems in the given GEMFOLDER
export GEM_HOME="/home/simplay/playground/jruby/build/gems"
export GEM_PATH="/home/simplay/playground/jruby/build/gems"
export JARS_HOME=$GEM_HOME/jars
export JARS_LOCK=$GEM_HOME/Jars.lock

exec java -cp /home/simplay/.gradle/caches/modules-2/files-2.1/org.jruby/jruby-complete/9.1.7.0/d6b98ab4b7d9ad305e3331eca5528bd03960cf76/jruby-complete-9.1.7.0.jar org.jruby.Main -rjars/setup -S $@

