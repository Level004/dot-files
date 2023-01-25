#git related aliases
alias gitcm="git commit -m"
alias gitch="git checkout"
alias gp="git push"
alias ga="git add"
alias gst="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias gdch="git -c core.fileMode=false diff"
alias glgp="git log --stat --color -p"
alias glol="git log --graph --abbrev-commit --decorate --date=relative --all"
alias glog="git log --all --decorate --oneline --graph"
alias glc="git log --decorate --oneline --graph --sehow-signature"
alias gcount=" git shortlog -n -s -e"
alias yolo='ga . && git commit -m "$(curl -s https://whatthecommit.com/index.txt)" && gp --force'

# php artisan related aliases
alias art="php artisan"
alias artdefault="art defaults -f"
alias dbreset="php artisan migrate:fresh && php artisan db:seed && art defaults -f"

# misc aliases
alias database="mysql -ularavel -p"
alias nginxr="sudo systemctl restart nginx"
alias nginxs="sudo systemctl status nginx"
alias ubuntu="ssh ubuntu-stage"

# extra aliases
# This is for non-general aliases that only work on a spesific OS
# feel free to remove if those don't interest you

# linux
alias upd="sudo apt update && sudo apt upgrade -y && sudo apt autoclean"
alias sai="sudo apt install"
alias sclock="xscreensaver-command --lock"
alias storage7="sudo chmod 777 -R storage/"
alias discord="cat discordcss.txt | xclip -selection c"
alias fullbuild="env && npm i && composer i && npm run dev && sudo chmod 777 -R storage/ && dbreset && php artisan key:generate"
alias fresh="rm -rf node_modues && npm i && npm run dev"
alias env="cp .env.example .env"
alias search="history | grep"