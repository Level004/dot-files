# Add precmd hook
add-zsh-hook precmd update_prompt

PROMPT_SYMBOL='☔'

# Update PROMPT and RPROMPT
function update_prompt() {
    # Custom prompt with timestamp and git branch name
    export PROMPT=$'%F{005}┌──[%B%F{011}%(6~.%-1~/…/%4~.%5~)%b%F{005}]-%(#.$PROMPT_SYMBOL.$PROMPT_SYMBOL)$(node_prompt)%B%F{005}%b%F{005}\n└─%B%(#.%F{011}#.%F{011}$)%b%F{006} '
    export RPROMPT='%(1V.(%1v).)'

    zle && zle reset-prompt
}

# Add update_prompt function to precmd function list
precmd_functions+=update_promp
