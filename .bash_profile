# CLI confirguration
### Git branch in prompt
#   => no longer using because of Hyper.js plugin for git
# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
# }

PS1="◬ "

# Exports
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin"
export NVM_DIR="/Users/pm/.nvm"

# Aliases
### Projects
alias p="cd ~/Development/Ruby/PowerSupply"
alias km="cd ~/Development/React\ Native/kale-mobile"
alias kw="cd ~/Development/Ruby/kale-web"

### Territory related
alias ps_console="heroku run console --app powersupply-orders"
alias stage_console="heroku run console --app powersupply-staging"
alias sc="say heads up, specs are completed"
alias ns="npm start"
alias nt="npm run test-watch"

### Kale related
alias kale_db_snapshot="heroku pg:backups:capture -a kaleweb"
alias kale_pull_prod_db="curl -o latest.dump `heroku pg:backups public-url -a kaleweb`"
alias kale_prod_db="pg_restore --verbose --clean --no-acl --no-owner -h localhost -U pm -d kale-web-dev latest.dump"

# RVM and NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
