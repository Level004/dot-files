# Create and CD into the just created folder
function take() {
    mkdir -p $@ && cd ${@:$#}
}

# Which commands do you use the most
function zsh_stats() {
    fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function gcp ()
{
    git commit -m "$1" && git push
}

function gacp ()
{
    git add $1 && git commit -m "$2" && git push
}

function activatefolder () 
{
  local base_name=$(basename "$PWD")
  cd "$base_name/Scripts/" && . activate && cd ..
}

function gfb ()
{
git branch -r \
  | grep -v '\->' \
  | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" \
  | while read remote; do \
      git branch --track "${remote#origin/}" "$remote"; \
    done
    git fetch --all
    git pull --all
}
