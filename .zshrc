# Setup OpenSSL
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Antigen Plugins
source '/usr/local/share/antigen/antigen.zsh'

# Load the oh-my-zsh's library.
antigen use oh-my-zsh


# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle webyneter/docker-aliases
antigen bundle mattberther/zsh-pyenv
antigen bundle sroze/docker-compose-zsh-plugin
antigen bundle git
antigen bundle laggardkernel/git-ignore
antigen bundle heroku
antigen bundle decayofmind/zsh-iterm2-utilities
antigen bundle laggardkernel/zsh-iterm2
antigen bundle droctothorpe/kubecolor
antigen bundle mattbangert/kubectl-zsh-plugin
antigen bundle Dbz/kube-aliases
antigen bundle lein
antigen bundle marzocchi/zsh-notify
antigen bundle srijanshetty/node.plugin.zsh
antigen bundle antigen bundle buonomo/yarn-completion
antigen bundle brew
antigen bundle brew-cask
antigen bundle gem
antigen bundle droctothorpe/kubecolor.git
antigen bundle node
antigen bundle docker
antigen bundle ssh-agent
antigen theme denysdovhan/spaceship-prompt

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias allup='brew update;brew upgrade;brew cask upgrade;mas upgrade;brew doctor'

# Antigen Plugin Manager
source ~/antigen.zsh

# OpenSSL
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# Google Cloud SDK
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

#VVMWare Fusion
export PATH=$PATH:"/Applications/VMware Fusion.app/Contents/Library"

# Paths
export PATH="/usr/local/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Load pyenv automatically
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Compiler framework
export PYTHON_CONFIGURE_OPTS="--enable-framework"
