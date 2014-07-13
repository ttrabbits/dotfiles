# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="my"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# alias
alias tmux='tmux -2'

# LANG
export LANG=ja_JP.UTF-8

# PATH
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
export PATH=".:$PATH"

# python
export PATH="$HOME/.pyenv/shims:$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export PYTHONPATH=/usr/local/Cellar/opencv/2.4.9/lib/python2.7/site-packages:$PYTHONPATH

# zsh-completions
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

