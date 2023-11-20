# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt correct
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/{{ user }}/.zshrc'

EDITOR=vim

bindkey '^ ' autosuggest-accept
bindkey  '^[[H'   beginning-of-line
bindkey  '^[[F'   end-of-line
bindkey  '^[[3~'  delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load aliases and shortcuts if existent.
[ -f "$HOME/aliasrc" ] && source "$HOME/aliasrc"

# Load ; should be last.
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

eval "$(oh-my-posh init zsh --config ~/.poshthemes/powerlevel10k_rainbow.omp.json)"

export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_DEFAULT_OPTS="--color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b --height 60% --border sharp --prompt ':: ' --preview 'bat --color=always --line-range :50 {}'"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'eza --tree {} | head -50'"

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
