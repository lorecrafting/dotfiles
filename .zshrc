alias reload='exec /bin/zsh -l'
alias ec='vim ~/.zshrc'
alias gam='git add . ; git commit --amend --no-edit'
alias gupd='gplm && grbm'
alias gplm='git fetch origin $(git_main_branch):$(git_main_branch)'
alias grbm='git stash && git rebase $(git_main_branch) && git stash pop'
alias gupdr='gplm && grbm && git push -f'
alias rc_staging='heroku run rails console -a bount-web-staging'
alias rc_prod='heroku run rails console -a bount-web-production'
alias nah='git reset --hard && git clean -df'
alias gcm='git checkout $(git_main_branch)'
alias log_prod='heroku logs -a bount-web-production -t'
alias log_stg='heroku logs -a bount-web-staging -t'
alias gca='git add . ; git commit --amend --no-edit'
alias gitx='open -a SourceTree .'
alias conweb='docker exec -it `docker ps -aqf "name=web_app_1"` /bin/bash'
alias consel='docker exec -it `docker ps -aqf "name=selenium"` /bin/bash'
alias de='docker exec -it `docker ps -aqf "name=web_app_1"`'
alias annotate='de bin/annotate --force'
# git undo, remove last commit but leave commited files on stg
alias gu=‘git reset --soft ’\’‘HEAD^‘\’
alias grbi='git rebase -i'
alias grbi2='grbi HEAD~2'
alias grbi3='grbi HEAD~3'
alias grbi4='grbi HEAD~4'
alias grbi5='grbi HEAD~5'
alias grbi6='grbi HEAD~6'
alias grbi7='grbi HEAD~7'
alias grbi8='grbi HEAD~8'
alias grbi9='grbi HEAD~9'
alias gamm='git add -A; git commit --amend --no-edit'
alias gu='git reset --soft '\''HEAD^'\'
alias prod_rollback='heroku rollback -a bount-web-production'
alias de='docker exec -w /app -it `docker ps -aqf "name=web-app-1"`'
alias mig='de rails db:migrate'
alias rs='de bin/rspec';
alias prettier_fix='de bin/yarn prettier --write .'
alias prettier_check='de bin/yarn prettier --check .'
alias lint_js='bin/yarn lint:eslint'
alias lint_prettier='bin/yarn prettier --check .'
alias lint_prettier_fix='bin/yarn prettier --write .'
alias lint_fix='bin/yarn prettier --write . ; rubocop --auto-correct'
alias lint_rubocop='bin/rubocop'
alias lint_rubocop_fix='bin/rubocop --auto-correct'
alias lint_haml='bin/haml-lint app/views'
alias lint='lint_prettier ; lint_rubocop ; lint_haml'
alias dbranches='git branch | grep -v "main" | xargs git branch -D'


# tail rspec test log
alias logst='tail -f log/test.log'


 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/raybount/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew asdf)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/opt/homebrew/bin:$PATH"
export GPG_TTY=$(tty)

eval $(thefuck --alias)
