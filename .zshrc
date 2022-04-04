# cd ~/
# clear
# sleep 0.4
# clear
# neofetch

# Source
source ~/.config/zsh/antigen.zsh

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
alias rmount="rclone mount Baud1: ~/RCloneTest --daemon --vfs-cache-mode full"
alias testhtml="pytest --html=report.html --self-contained-html --quiet"

# pdf alias
pdf() {
    zathura $1 & disown
}

# Bundles
# antigen  oh-my-zsh

# source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle qoomon/zsh-lazyload
antigen bundle jeffreytse/zsh-vi-mode
# antigen bundle marlonrichert/zsh-autocomplete
# antigen bundle fzf
# antigen bundle unixorn/fzf-zsh-plugin
antigen bundle Aloxaf/fzf-tab
antigen bundle skywind3000/z.lua
antigen bundle kazhala/dotbare


# Syntax Highlight (Must be last)
antigen bundle zsh-users/zsh-syntax-highlighting

# EXPORTS
export PATH="$PATH:/Users/nashsauter/.local/bin"
export EDITOR=nvim
export PAGER=less
export LESS="-R"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export ZSH_AUTOSUGGEST_STRATEGY=completion


# Antigen Apply
antigen apply

# Starship (End)
eval "$(starship init zsh)"

# neofetch
