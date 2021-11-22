export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="isaac"

plugins=(git command-not-found)

source $ZSH/oh-my-zsh.sh

# this thing sucks and should never be enabled!
unsetopt AUTO_CD

if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

alias pacman='sudo pacman'
alias jekyll="cmd /c jekyll"
alias jekylls="cmd /c start cmd /c jekyll s"
alias octopress="cmd /c octopress"
alias dotfiles='git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git'
alias pkglist='comm -23 <(\pacman -Qqen | sort) <(\pacman -Qqg base base-devel | sort)'
alias orphanpkg='\pacman -Qttdq'
alias dc='docker-compose'
alias vi='emacs'
alias vim='emacs'
alias e='emacs'
