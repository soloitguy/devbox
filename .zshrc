#START OF ASCII ART

lolcat <<EOF
  ▄████  ██▓        ██░ ██  █████▒
 ██▒ ▀█▒▓██▒       ▓██░ ██▒▓██   ▒
▒██░▄▄▄░▒██░       ▒██▀▀██░▒████ ░
░▓█  ██▓▒██░       ░▓█ ░██ ░▓█▒  ░
░▒▓███▀▒░██████▒   ░▓█▒░██▓░▒█░
 ░▒   ▒ ░ ▒░▓  ░    ▒ ░░▒░▒ ▒ ░
  ░   ░ ░ ░ ▒  ░    ▒ ░▒░ ░ ░
░ ░   ░   ░ ░       ░  ░░ ░ ░ ░
      ░     ░  ░    ░  ░  ░


EOF

#END OF ASCII ART

roots_box(){
  echo -n "Sully"
}

production_box(){
  echo -n "Production"
}

staging_box(){
  echo -n "Staging"
}

dev_box(){
        echo -n "DEV"
}

POWERLEVEL9K_TIME_FORMAT='%D{%H:%M }'

POWERLEVEL9K_CUSTOM_BOX="roots_box"
POWERLEVEL9K_CUSTOM_BOX_BACKGROUND="red"
POWERLEVEL9K_CUSTOM_BOX_FOREGROUND="black"

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_box_joined dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

POWERLEVEL9K_OS_ICON_BACKGROUND="red"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
export DEFAULT_USER="$USER"
export ASPNETCORE_ENVIRONMENT="Development"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/Cellar/node/7.0.0/lib/node_modules/grunt-cli/bin:$PATH
export PATH=/usr/local/Cellar/node/7.0.0/lib/node_modules/pm2/bin:$PATH
export PATH=/usr/local/Cellar/node/7.0.0/lib/node_modules/protractor/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/gopath
export PATH=/usr/local/Cellar/azure-cli/2.0.20/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/kevin.sullivan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm osx web-search wd)

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias subl="open -a 'Sublime Text'"
alias atom="open -a 'Atom'"
alias gitkraken="open -a 'GitKraken'"
alias kitematic="open -a 'Kitematic'"
alias code="open -a 'Visual Studio Code'"
alias irc="docker run -it jess/irssi"
alias slack="open -a 'Slack'"
alias hipc="open -a 'HipChat'"
alias webz="open -a 'Google Chrome'"
alias azcli="docker run -v ${HOME}:/root -it azuresdk/azure-cli-python:latest"
alias swapACSE="kubectl config use-context absg-prod-acse-build"
alias swapACS="kubectl config use-context absg-prod-acs-build-absg-prod-acs-build-c47619"
alias swapMini="kubectl config use-context minikube"
alias swapGKE="kubectl config use-context gke_warpspider-160623_us-central1-a_kevinsk8s"
alias swapsbc="kubectl config use-context its-sb-clu-its-sb-k8s-test-4fcb06mgmt"
alias swapSolo="kubectl config use-context gke_soloitguy-1337_us-central1-a_solo"
alias swapDevApp="kubectl config use-context its-dev-app-k8s"
alias swapTestApp="kubectl config use-context its-test-app-k8s"
alias whatkube="kubectl config current-context"
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /usr/local/Cellar/node/7.0.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /usr/local/Cellar/node/7.0.0/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh

export PATH=$PATH:/Users/kevin.sullivan/bin

source '/Users/kevin.sullivan/lib/azure-cli/az.completion'
source '/Users/kevin.sullivan/_docker'
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kevin.sullivan/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kevin.sullivan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kevin.sullivan/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kevin.sullivan/google-cloud-sdk/completion.zsh.inc'; fi
