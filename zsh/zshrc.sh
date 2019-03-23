export ZSH=$HOME/.oh-my-zsh
export ANDROID_HOME="/Users/trungnguyen/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$HOME/bin:usr/local/bin:$PATH
export PATH=$HOME/.local/share/umake/bin:$PATH
export TERM=xterm-256color
export TERMINAL="terminator"
export VISUAL=vim
export EDITOR="$VISUAL"

ZSH_THEME="spaceship"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

#alias tmux="TERM=screen-256color-bce tmux"
alias vim="mvim -v"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=250'

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
source $ZSH/oh-my-zsh.sh

source ~/dotfiles/zsh/keybindings.sh

alias android-studio="open -a /Applications/Android\ Studio.app"
