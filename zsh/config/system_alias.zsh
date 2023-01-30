# -------------------------------------------------------------------
# ZSH
# -------------------------------------------------------------------
alias reload='source ~/.zshrc'

alias database="mysql -ularavel -p"
alias nginxr="sudo systemctl restart nginx"
alias nginxs="sudo systemctl status nginx"
alias ubuntu="ssh ubuntu-stage"

alias upd="sudo apt update && sudo apt upgrade -y && sudo apt autoclean"
alias sai="sudo apt install"
alias sclock="xscreensaver-command --lock"
alias storage7="sudo chmod 777 -R storage/"
alias discord="cat discordcss.txt | xclip -selection c"
alias fullbuild="env && npm i && composer i && npm run dev && sudo chmod 777 -R storage/ && dbreset && php artisan key:generate"
alias fresh="rm -rf node_modues && npm i && npm run dev"
alias env="cp .env.example .env"
alias search="history | grep"