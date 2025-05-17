devbox global shellenv --init-hook | source

source (starship init fish --print-full-init | psub)

set fish_greeting # Disable greeting
set -x BC_ENV_ARGS $HOME/.bc

fzf_configure_bindings --git_status=\cg

# ctrl-z to pause vim; ctrl-k to return
bind \ck 'if test -z (commandline) ; fg; or clear; else ; clear; commandline ""; end'

alias bc='bc -lq'
alias gb='git checkout -b'
alias gbs='git-branch-select'
alias git-branch-sync='git pull origin (git branch --show-current) --ff-only'
alias gpu='git push -u origin (git branch --show-current)'
alias gpf='git push -f origin (git branch --show-current)'
alias ll='ls -lahL'
alias strip-colors='sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g"'
alias tailscale='/Applications/Tailscale.app/Contents/MacOS/Tailscale'
alias vim=(which nvim)

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/kwells/.cache/lm-studio/bin

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/kwells/.lmstudio/bin
# End of LM Studio CLI section

