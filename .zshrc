# cd ~/
# clear
# sleep 0.4
# clear
neofetch
# fortune | cowsay

# Source
source ~/.config/zsh/antigen.zsh

# EXPORTS
export PORT=8080
export PATH="$PATH:/Users/nashsauter/.local/bin"
export EDITOR=nvim
export PAGER=less
export LESS="-R"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export ZSH_AUTOSUGGEST_STRATEGY=completion


# Aliases
alias v="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="nvim ~/.zshrc"
alias r="ranger"
alias wiki="nvim ~/vimwiki/index.md"
alias lg="lazygit"
alias snips="v ~/.config/nvim/UltiSnips"
alias show="r /Users/nashsauter/Movies/Shows"
alias q="exit"
alias stopwatch="termdown -s"
alias powercord="cd ~/Documents/discord/powercord && npm run plug"
alias lastfm="./Documents/cli/lastfm/LastFM\ Discord"
alias tlastfm='tmux new-session -A -D -s lastfm "lastfmrpc"'
alias rmount="rclone mount Baud1: ~/RClone --daemon --vfs-cache-mode full"
alias rcgui="rclone rcd --rc-web-gui"
alias testhtml="pytest --html=report.html --self-contained-html --quiet"
alias searx="cd ~/Searx && docker run --rm \
             -d -p ${PORT}:8080 \
             -v "${PWD}/searxng:/etc/searxng" \
             -e "BASE_URL=http://localhost:$PORT/" \
             -e "INSTANCE_NAME=my-instance" \
             searxng/searxng"
alias cmus='tmux new-session -A -D -s cmus "$(where cmus)"'
alias acmus='screen -q -r -D cmus || screen -S cmus $(which cmus)'
alias c="cmus"
alias rips="rip search -s deezer"

# pdf alias
pdf() {
    zathura $1 & disown
}



# Bundles
# antigen  oh-my-zsh

# source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle qoomon/zsh-lazyload
antigen bundle jeffreytse/zsh-vi-mode
# antigen bundle marlonrichert/zsh-autocomplete
# antigen bundle fzf
# antigen bundle unixorn/fzf-zsh-plugin
antigen bundle skywind3000/z.lua
antigen bundle kazhala/dotbare

## Options
setopt extendedglob
setopt nocaseglob
setopt correct
setopt rcexpandparam

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Syntax Highlight (Must be last)
antigen bundle zsh-users/zsh-syntax-highlighting
export FZF_DEFAULT_OPTS='--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'


# Antigen Apply
antigen apply




# Starship (End)
eval "$(starship init zsh)"
