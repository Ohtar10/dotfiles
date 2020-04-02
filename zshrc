# Bash profile
source $HOME/.bash_profile

# Linux antigen file
source $HOME/antigen.zsh

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
#antigen theme agnoster
#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme fcamblor/oh-my-zsh-agnoster-fcamblor
antigen theme denysdovhan/spaceship-prompt

# plugins
antigen bundle git
antigen bundle sudo
antigen bundle lein
antigen bundle history
antigen bundle command-not-found
#antigen bundle autojump
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle tmux
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# Apply the changes
antigen apply

# Autosuggestions
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
