# Modifying PATH for MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 3.5
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH"

# for tranSMART development
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/
export GRAILS_HOME=~/.grails/grails-2.3.11/
export PATH=$GRAILS_HOME/bin:$PATH

# enable bash autocompletion
if [ -f /opt/local/share/bash-completion/bash_completion ]; then
    . /opt/local/share/bash-completion/bash_completion
fi

# terminal colors
export CLICOLOR=1
export LSCOLORS=Axgxxxxxagxxxxxxxx
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# add fastboot and adb to PATH
export PATH=$PATH:~/.android-sdk-macosx/platform-tools/

# make fzf work with bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
