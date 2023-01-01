## open a new session from given directories
## assumes you are currectly in tmux 
function tmux-sessionizer(){
    start_dir=$(find ~/workspace ~/fun -mindepth 1 -maxdepth 1 -type d | fzf)
    session_name=$(basename "$start_dir")

    if ! tmux has-session -t "$session_name" 2> /dev/null ; then
        tmux new-session -s "$session_name" -c "$start_dir" -d
    fi 

    tmux switch-client -t "$session_name"
}

## delete every branch from the local but master
function git-branch-purge(){
    git branch | grep -v 'master' | xargs git branch -D
}

bindkey -s ^f "tmux-sessionizer\n"


