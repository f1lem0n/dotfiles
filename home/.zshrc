ZDOTDIR=$HOME/.zsh

# Keep 1000 lines of history within the shell and save it to ~/.zsh/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh/.zsh_history
setopt histignorealldups sharehistory

# enable aliases
if [ -f "$ZDOTDIR/.zsh_aliases" ]; then
    . "$ZDOTDIR/.zsh_aliases"
fi

# enable user's private bin
if [ -d "$HOME/.local/bin" ]; then
    PATH="$PATH:$HOME/.local/bin"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/f1lem0n/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

# ask for ssh password only at zsh session start
eval `keychain --agents ssh --eval id_rsa`

# >>> PLUGINS >>>
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# <<< PLUGINS <<<

# Starship Prompt Theme
eval "$(starship init zsh)"
