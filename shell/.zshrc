export HISTSIZE=1000
export HISTFILE=~/.zsh_history
PROMPT='%n@%m:%~$ '
alias ll='ls -alF'
alias la='ls -A' 
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias szr='source ~/.zshrc'
alias vzr='vi ~/.zshrc'

# Git関連エイリアス
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'
alias gd='git diff'
alias gb='git branch'

# システム関連エイリアス
alias du1='du -h --max-depth=1'
alias df='df -h'
alias psg='ps aux | grep'
alias myip='curl ifconfig.me'

# ====================
# History Settings (Enhanced)
# ====================

# 履歴ファイルのサイズを大幅に増加
export HISTSIZE=50000
export HISTFILESIZE=100000
export HISTFILE=~/.zsh_history

# 履歴の重複管理
setopt HIST_IGNORE_DUPS        # 直前と同じコマンドは記録しない
setopt HIST_IGNORE_ALL_DUPS    # 履歴に存在するコマンドは重複削除
setopt HIST_IGNORE_SPACE       # スペースで始まるコマンドは記録しない
setopt SHARE_HISTORY           # 複数のzshセッション間で履歴を共有
setopt EXTENDED_HISTORY        # 実行時間付きで履歴を保存

# ====================
# Advanced Directory Navigation
# ====================

# auto_cd: ディレクトリ名だけで移動（cd不要）
setopt auto_cd

# auto_pushd: cd実行時に自動的にディレクトリスタックにプッシュ  
# pushd_ignore_dups: 重複するディレクトリはスタックに追加しない
setopt auto_pushd
setopt pushd_ignore_dups

# ディレクトリスタック表示用エイリアス
alias d='dirs -v | head -10'

# 便利な関数
# mkcd: ディレクトリを作成して同時に移動
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# ====================
# Smart Completion
# ====================

# 補完システムを初期化
autoload -Uz compinit && compinit

# 大文字小文字を区別しない補完
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補をメニューで選択
zstyle ':completion:*' menu select

# ====================
# Simple Enhanced Prompt
# ====================

# Git情報を表示する関数（シンプル版）
git_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo " ($(git branch --show-current 2>/dev/null))"
    fi
}

# シンプルなカスタムプロンプト
PROMPT='[%T] %n@%m:%~$(git_info)
$ '
