# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end
# VIM mode
# fish_vi_key_bindings

# ============================
# Key bindings
# ============================
bind \cj ''    # tmux prefix

# ============================
# 定数設定
# ============================
export VISUAL='nvim'

# ============================
# 各種プログラミング言語別設定
# ============================

# ============ aliases ============
alias fishrc='vim ~/.config/fish/config.fish'
alias zshrc='vim ~/.zshrc'
alias tmuxrc='vim ~/.tmux.conf'
alias vimrc='vim ~/.config/nvim'
alias showssh='vim -R ~/.ssh'
alias todo='vim /etc/issue/'
alias vim "nvim"
alias v 'nvim'
alias tree="tree -I node_modules -L 8" # node_modulesを無視してtreeを実行する。

abbr -a qr qrencode -t ansi
abbr -a .. cd ../
abbr -a ... cd ../../

# ============ Docker ============
abbr -a dc docker-compose
abbr -a dcu docker-compose up
abbr -a dce docker-compose exec
abbr -a dcl docker-compose logs -f

# ============ Gh ============
abbr -a empty-commit git commit --allow-empty
abbr -a create-pr gh pr create --assignee ArakiTakaki
abbr -a myissue "gh issue list -a ArakiTakaki | fzf | awk '{print \$1}' | xargs -IHASH gh issue view HASH"
abbr -a mypr "gh pr list -a ArakiTakaki | fzf | awk '{print \$1}' | xargs -IHASH gh pr view HASH"
abbr -a open-issue "gh issue list | fzf | awk '{print \$1}' | xargs -IHASH gh issue view HASH --web"

# ============ Java ============
# set -x JAVA_HOME (/usr/libexec/java_home -v 11)

# ============ Go ============
# export PATH="$HOME/.goenv/bin:$PATH"
# eval (goenv init - | source)
# set -x GOPATH $HOME/go
# set -x GOROOT ( go env GOROOT )

# TODO version 取れるまで暫定対応
export PATH="$GOPATH/1.16.2/bin:$PATH"

# ============ Python ============
alias py3='python3'

# ============ ruby ============
alias rb='ruby'

# ============ rust ============
# set -gx PATH "$HOME/.cargo/bin" $PATH;

