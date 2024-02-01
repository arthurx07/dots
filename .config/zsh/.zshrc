# ~/.config/zsh/.zshrc
### General options
setopt autocd # Automatically cd into typed directory.
setopt interactive_comments # Enable comments in prompt
setopt correctall # auto-correction of commands typed
setopt globdots # Include hidden files.
setopt menu_complete # On ambiguous completion insert first match immmediately. Use to not needing too press two times tab to open completion menu
stty stop undef # Disable ctrl-s to freeze terminal.
stty start undef # Disable ctrl-q to unfreeze terminal

# History options
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CONFIG_HOME}/zsh/history"
setopt hist_ignore_all_dups # Delete an old recorded event if a new event is a duplicate.
# Similar as above: setopt hist_save_no_dups # Ignores duplicates when writing history file
setopt hist_ignore_space # useful trick to prevent particular entries from being recorded into a history by preceding them with at least one space. 
setopt inc_append_history # Write to the history file immediately, not when the shell exits.
setopt share_history # Share history between all sessions.
setopt hist_expire_dups_first # will start removing repeating commands when limit of $HISTSIZE will be reached.

### Prompt
autoload -U promptinit
promptinit
prompt gentoo # set prompt to gentoo's default adds +5ms of latency
#[?] autoload -U colors && colors # Load colors

## Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b' # Format the vcs_info_msg_0_ variable
setopt prompt_subst # If the PROMPT_SUBST option is set, the prompt string is first subjected to parameter expansion, command substitution and arithmetic expansion. See Expansion. We need command substitution enabled for the format_current_git_branch function
RPROMPT='%F{green}${vcs_info_msg_0_}%f' # right prompt

### Auto/Tab Completion
autoload -U compinit
zstyle ':completion:*' menu select # navigate between possible completion
zmodload zsh/complist
compinit # adds 20ms of latency [?]
# _comp_options+=(globdots)

### Vi mode
bindkey -v
export KEYTIMEOUT=1
# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
#

### Export environment variables
export GPG_TTY=$TTY # git commit signing
export MANPAGER='nvim +Man!' # set nvim as man pager

### Load aliases and shortcuts if existent. (adds 2-3 ms) 
# First run this file, then source the others
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/widgets" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/widgets"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliases"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bindings" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/bindings"

# Load fzf bindings/completions
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh 2>/dev/null # Use fzf for ctrl+r, ctrl+t, alt+c [history, file+directory search, fuzzy cd]
[ -f /usr/share/zsh/site-functions/_fzf ] && source /usr/share/zsh/site-functions/_fzf 2>/dev/null # Use fzf when arg is ** (works with vim, cd, kill -9, ssh, telnet, unset, export, unalias, etc.)
[ -f ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/fzf ] && source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/fzf # fzf configs

# Load zsh-autopair
[ -f ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-autopair/autopair.zsh ] && source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-autopair/autopair.zsh 2>/dev/null
autopair-init

# Load zsh-autosuggestions
[ -f /usr/share/zsh/site-functions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh 2>/dev/null

# Load syntax highlighting; should be last. adds 10ms
[ -f /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh 2>/dev/null # see fast-zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS+=brackets # recommended by zsh-autopair
