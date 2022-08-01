export ZSH="/Users/v.shavelskiy/.oh-my-zsh"

export TERM="xterm-256color"
ZSH_THEME="superjarin"

plugins=(git)

source $ZSH/oh-my-zsh.sh

zmodload -i zsh/complist

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH=/opt/homebrew/bin:$PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm``

alias ll="exa -l -g --icons"
alias lla="ll -a"

export EXA_COLORS="\
pi=38;5;14:\
cd=38;5;14:\
di=38;5;14:\
so=38;5;14:\
ln=38;5;14:\
ex=38;5;14:\
bd=38;5;14:\
or=38;5;14:\
ur=37:\
uw=37:\
ux=37:\
ue=37:\
gr=37:\
gw=37:\
gx=37:\
tr=37:\
tw=37:\
tx=37:\
su=37:\
sf=37:\
xa=38:\
sn=37:\
sb=37:\
df=37:\
ds=37:\
uu=37:\
un=37:\
gu=37:\
gn=37:\
lc=37:\
lm=37:\
xx=37:\
da=385;245:\
in=37:\
bl=38;5;220:\
hd=37:\
lp=37:\
cc=37"
