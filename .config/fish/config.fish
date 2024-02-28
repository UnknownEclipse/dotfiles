fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/.pyenv/bin

eval $(/opt/homebrew/bin/brew shellenv)

brew shellenv | source

if status is-interactive
    atuin init fish | source
end

set -Ux LS_COLORS $(vivid generate nord)
set -Ux BAT_THEME "Nord"
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p '"

starship init fish | source
zoxide init fish | source
pyenv init - | source

alias yt-audio='yt-dlp -x --audio-quality best'
alias exa='eza'
alias ls='exa'
