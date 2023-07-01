if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH $PATH $HOME/.cargo/bin $HOME/.local/bin
set -x LS_COLORS $(vivid generate nord)
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x BAT_THEME Nord

alias cat='bat --paging=never'
alias ls=exa
alias hx=helix
alias sudo='sudo '

starship init fish | source
zoxide init fish | source