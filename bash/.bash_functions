gcp ()
{
    git commit -m "$1" && git push
}

gacp ()
{
    git add $1 && git commit -m "$2" && git push
}

activatefolder () 
{
  local base_name=$(basename "$PWD")
  cd "$base_name/Scripts/" && . activate && ..
}
