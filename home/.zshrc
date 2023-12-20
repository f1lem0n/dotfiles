ZDOTDIR=$HOME/.zsh

# >>> PLUGINS >>>
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# <<< PLUGINS <<<

# >>> visual editing >>>
export EDITOR=nvim
export VISUAL=nvim
export KEYTIMEOUT=1
bindkey -v '^?' backward-delete-char
autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
# change cursor color on vi mode change
zle-keymap-select () {
    if [ $KEYMAP = vicmd ]; then
        echo -ne "\033]12;Yellow1\007"
    else
        echo -ne "\033]12;White1\007"
    fi
}
zle -N zle-keymap-select

zle-line-init () {
    zle -K viins
    echo -ne "\033]12;White1\007"
}
zle -N zle-line-init
# <<< visual editing <<<

# >>> history settings >>>
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.zsh/.zsh_history
setopt histignorealldups sharehistory
# <<< history settings <<<

# >>> aliases >>>
if [ -f "$ZDOTDIR/.zsh_aliases" ]; then
    . "$ZDOTDIR/.zsh_aliases"
fi
# <<< aliases <<<

# >>> private bin >>>
if [ -d "$HOME/.local/bin" ]; then
    PATH="$PATH:$HOME/.local/bin"
fi
# <<< private bin <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/f1lem0n/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/f1lem0n/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/f1lem0n/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/f1lem0n/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> OTHER >>>
# ask for ssh password only at zsh session start
eval `keychain --agents ssh --eval id_rsa`
# Starship Prompt Theme
eval "$(starship init zsh)"
# <<< OTHER <<<
