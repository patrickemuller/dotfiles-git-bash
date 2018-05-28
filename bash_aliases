#!/bin/bash

# ----------------------------------------------------------------------
# | Navigation                                                         |
# ----------------------------------------------------------------------

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# ----------------------------------------------------------------------
# | Git                                                                |
# ----------------------------------------------------------------------

alias gba="git branch -a"
alias gcm="git checkout master"
alias glpp="git log --pretty=oneline"
alias gs="git status"
alias gd="git diff"
alias gp="git pull"
alias gci="git commit --interactive"
alias ga="git add"
alias gmt="git mergetool"
alias gpom="git push origin master"
alias gpsm="git push staging master"
alias gppm="git push production master"
alias gr="git rebase -i HEAD~10"
alias gc="git commit -m "
alias gri="git add --all && git commit -m 'WIP' && git rebase -i HEAD~10"
alias rebase_master="git checkout master && git pull origin master && git checkout - && git rebase master"
alias rebase_staging="git checkout staging && git pull origin staging && git checkout - && git rebase staging"
alias merge_master="git checkout master && git pull --rebase && git checkout - && git rebase master && git checkout master && git merge -"
alias delete_merged="git branch --merged | grep -v '^* master$' | grep -v '^  master$' | grep -v '^* staging$' | grep -v '^  staging$' | xargs git branch -d"
alias clean_branches="git checkout master && git pull origin master &&  git checkout staging && git pull origin staging && git checkout master && git remote update --prune && delete_merged"

# ----------------------------------------------------------------------
# | Rails                                                              |
# ----------------------------------------------------------------------

alias rc="bin/rails c"
alias rs="bin/rails s"
alias gib="gem install bundler"
alias gibp="gem install bundler --pre"
alias bi="bundle install"
alias bu="bundle update"
alias bx="bundle exec"
alias bs="bundle exec rspec"
alias bir="bundle install --relock"
alias brake="bin/rake"
alias brails="bin/rails"
alias migrate="bin/rake db:migrate"
alias rspec="bundle exec rspec"
alias thin="bundle exec thin"
alias remakedb="bin/rake db:drop db:create db:migrate && bin/rake db:seed"
alias remaketest="bin/rake db:drop db:create db:migrate RAILS_ENV=test"
alias remakedbs="bin/rake db:drop db:create db:migrate && bin/rake db:seed && bin/rake db:drop db:create db:migrate RAILS_ENV=test"

# ----------------------------------------------------------------------
# | Heroku                                                             |
# ----------------------------------------------------------------------

alias prod_logs="heroku logs -t --remote production"
alias stag_logs="heroku logs -t --remote staging"
alias migrate_stag="heroku run rake db:migrate --remote staging"
alias migrate_prod="heroku run rake db:migrate --remote production"
alias reset_stag_db="heroku pg:reset --remote staging DATABASE && heroku run rake db:migrate --remote staging && heroku run rake db:seed --remote staging && heroku restart --remote staging"
alias reset_prod_db="heroku pg:reset --remote production DATABASE && heroku run rake db:migrate --remote production && heroku run rake db:seed --remote production && heroku restart --remote production"

# ----------------------------------------------------------------------
# | Package Managers                                                   |
# ----------------------------------------------------------------------

# npm
# https://docs.npmjs.com/

if [ -x "$(command -v npm)" ]; then
    alias npmi="npm install"
    alias npmr="npm uninstall"
    alias npms="npm search"
    alias npmu="npm update"
fi

# ----------------------------------------------------------------------
# | Shorter Commands                                                   |
# ----------------------------------------------------------------------

alias :q="exit"
alias c="clear"
alias ch="history -c && > ~/.bash_history"
alias e="vim"
alias g="git"
alias ll="ls -l"
alias m="man"
alias map="xargs -n1"
alias q="exit"
alias rm="rm -rf"
