#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# apps
export EDITOR=vim
export FCEDIT=vim
export VISUAL=vim
if [ -n "$DISPLAY" ]; then
   export BROWSER=firefox
fi

# history
export HISTCONTROL=ignoreboth
export HISTIGNORE='history*:ls:ls -la :ls -al :bg:fg:exit:pwd:clear:cd:cd ..:cd ~/:cd -:jobs'
shopt -s histappend

# Ignore me if I try to complete an empty line
shopt -s no_empty_cmd_completion

# auto completion
complete -cf sudo
complete -cf man
complete -cf pkill

# path
export LOCAL_PATH="$HOME/.local"
export PATH="$LOCAL_PATH/bin:$PATH"
export PKG_CONFIG_PATH="$LOCAL_PATH/lib/pkgconfig"
export BOOST_ROOT="$LOCAL_PATH"

[[ -z "$XDG_CONFIG_HOME"  ]] && export XDG_CONFIG_HOME="$HOME/.config"
[[ -f "$HOME/.dircolors" ]] && eval $(dircolors -b "$HOME/.dircolors")

umask 022

if [[ -d $HOME/.bashrc.d ]]; then
    for rc in $HOME/.bashrc.d/*.bash; do
        if [[ -e $rc ]]; then
            source $rc
        fi
    done
    unset -v rc
fi
