# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export EnvironmentToUse=Staging

export CC=/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.9.1/bin/gcc
export CXX=/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.9.1/bin/g++
export PATH=/usr/local/bin:$PATH

alias disableProxy='unset http_proxy'
alias enableProxy='export http_proxy=http://svc.proxyaccess:SpotAccess@chidproxy02data.spottrading.com:80'

alias ninja='/spot/dev/3rdParty/cpp/misc/ninja/ninja-v1.5.1/gcc-4.9.1/bin/ninja -C out/Release all'
alias ninjadebug='/spot/dev/3rdParty/cpp/misc/ninja/ninja-v1.5.1/gcc-4.9.1/bin/ninja -C out/Debug all'

source /etc/bash_completion.d/git
