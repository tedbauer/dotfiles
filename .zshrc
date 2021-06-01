# general
alias v="vim"

# git
alias gcm="git checkout master"
alias gc="git checkout"
alias gitb="git branch | grep '^\*' | cut -d' ' -f2 | pbcopy"

# rust
alias fmtc="cargo fmt --all && cargo clippy --all --all-targets"
