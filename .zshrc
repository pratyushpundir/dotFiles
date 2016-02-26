# Path to your oh-my-zsh installation.
export ZSH=/Users/Pratyush/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

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
plugins=(git battery)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# ALIAS - GENERIC ACTIONS
alias cls="clear"
alias refresh="source ~/.zshrc"
alias zshPref="subl ~/.zshrc"
alias edHosts="subl /etc/hosts"
alias edVHosts="subl /etc/apache2/extra/httpd-vhosts.conf"
alias edAp="subl /etc/apache2/httpd.conf"
alias serve="python -m SimpleHTTPServer 8080"
alias serve2="python -m SimpleHTTPServer 8888"
alias stopAp="sudo apachectl start"
alias startAp="sudo apachectl stop"
alias restartAp="sudo apachectl restart"
alias testAp="apachectl configtest"

# ALIASES - GIT ACTIONS
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gaa="git add ."
alias gco="git checkout"
alias gb="git branch"
alias gr="git remote"
alias glog="git log --oneline --graph --decorate --all"
alias removeGit="find . | grep .git | xargs rm -rf"

# ALIASES - ARTISAN ACTIONS
alias art="php artisan"
alias artMig="php artisan migrate"
alias artMigRefresh="php artisan migrate:refresh"
alias artMigRoll="php artisan migrate:rollback"
alias artMigS="php artisan migrate:status"
alias artMigReset="php artisan migrate:reset"
alias artMigInstall="php artisan migrate:install"

# ALIASES - VAGRANT ACTIONS
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vdes="vagrant destroy"
alias vssh="ssh vagrant@127.0.0.1 -p 2222"

# ALIASES - HOMESTEAD ACTIONS
alias homestead='function __homestead() { (cd ~/Virtual\ Machines/Homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias hup="homestead up"
alias hhalt="homestead halt"
alias hssh="ssh vagrant@127.0.0.1 -p 2222"
alias hdes="homestead destroy"

# ALIASES - PLACES
alias ..="cd .."
alias ...="cd ../.."
alias home="cd ~"
alias desk="cd ~/desktop"
alias downs="cd ~/downloads"
alias sites="cd ~/sites"
alias dumps="cd ~/Dumps"
alias vms="cd ~/VirtualBox\ VMs"
alias lsites="cd ~/sites/Live-Sites"
alias psites="cd ~/sites/Live-Sites/Personal-Sites"
alias csites="cd ~/sites/Live-Sites/Customer-Sites"
alias osites="cd ~/sites/OctoberCMS"
alias code="cd ~/code"
alias cpp="cd ~/code/C++"
alias devAssets="cd ~/Documents/Development/Assets"
alias themes="cd ~/Documents/Development/Assets/Website\ Themes"
alias haswell="cd ~/Documents/Development/Assets/Website\ Themes/Haswell\ \-\ Website\ Template"
alias omega="cd ~/Documents/Development/Assets/Website\ Themes/Omega\ \-\ Website\ Template"

# ALIASES - TEMP PLACES
alias cur="cd ~/sites/Live-Sites/Customer-Sites/curature.in"
alias sby="cd ~/sites/Live-Sites/Customer-Sites/suitsbyyou.in"
alias vrv="cd ~/sites/Live-Sites/Personal-Sites/vervetronix.com"

# ALIASES - CLI APPS
alias ppu="phpunit"

# ALIASES - Composer
alias cup="composer update"
alias cinstall="composer install"
alias csump="composer dumpautoload"

# ALIASES - CLI APPS UPDATES
alias bup="brew update && brew upgrade"
alias npmup="npm --global update"
alias rvmup="rvm get stable"
alias gemup="gem update"
alias csup="composer selfupdate"
alias cgup="composer global update"
alias zup="upgrade_oh_my_zsh"
alias upall="csup && cgup && bup && rvmup && gemup && npmup && zup"

# ALIASES - SSH SERVERS
alias sshCUR="ssh -t root@128.199.102.48"
alias sshPSTAGING="ssh -t pratyush@45.55.170.80"
alias sshRSTAGING="ssh -t root@45.55.170.80"
alias sshRVRV="ssh -t root@159.203.117.145"
alias sshPVRV="ssh -t pratyush@159.203.117.145"

# Setup PATH variable
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export PATH="$PATH:/Users/Pratyush/.composer/vendor/bin"
export NVM_DIR="/Users/Pratyush/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting