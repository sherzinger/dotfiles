# for tranSMART development
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/
export GRAILS_HOME=~/.grails/grails-2.3.11/
export PATH=$GRAILS_HOME/bin:$PATH

export PATH=/usr/local/bin/python3:$PATH

# enable bash autocompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# terminal colors
export CLICOLOR=1
# export LSCOLORS=
# export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"


# for fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
