gcp ()
{
    git commit -m "$1" && git push
}

gacp ()
{
    git add $1 && git commit -m "$2" && git push
}