eval "$(rbenv init -)"
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export LD_LIBRARY_PATH=/Users/Max/torch/install/lib:/usr/local/Cellar/libsodium/1.0.8/lib/:/usr/local/cuda/lib:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

export DYLD_LIBRARY_PATH=/usr/local/Cellar/boost/1.57.0/lib:$DYLD_LIBRARY_PATH

export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"
