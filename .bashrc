# Modifying PATH for MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 3.5
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH"

# overwrite JAVA_HOME with jdk7 for tranSMART development
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/

# enable bash autocompletion
if [ -f /opt/local/share/bash-completion/bash_completion ]; then
    . /opt/local/share/bash-completion/bash_completion
fi

# terminal colors
export CLICOLOR=1
export LSCOLORS=Axgxxxxxagxxxxxxxx
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

