# nodejs bins
alias node8='/home/pi/node/node-v8.17.0-linux-armv7l/bin/node'
alias node14='/home/pi/node/node-v14.17.6-linux-armv7l/bin/node'
alias node16='/home/pi/node/node-v16.9.1-linux-armv7l/bin/node'

# list dirs
alias ldir='ls -p | grep -e / | cut -d / -f 1'
alias ldira='ls -ap | grep -e / | cut -d / -f 1'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# space  ( free disk space )
alias space='df -h /'

# git
alias add='git add . '
alias a='git add . '

alias status='git status'
alias s='git status'

alias pull='git pull'
alias push='git push'

alias commit='git commit -m '
alias gitl='git log -n 100 --format="%H : %s"'

alias cl='git gc'

# alias for pullall pushall, statall
. ~/bash/git/bash_aliases

# chmod
# make all *.sh files in pwd executable for the owner
alias ea='chmod 755 *.sh'

# grunt
alias gc='grunt commit'

# start fresh-by-cat
# alias fbc='nohup node ~/Documents/github_dustinpfister/blog_posts/scripts/apps/fresh-by-cat/app.js 8000 &> /dev/null'
# . ~/bash/node-blog/fbc.sh
