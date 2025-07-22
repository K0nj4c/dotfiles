# My Dotfiles for SSH & Remote Development

SSH接続とリモート開発に特化した開発環境設定

## 特徴
- **時刻付きプロンプト**: `[18:48] user@host:~/path (git-branch)`
- **便利なエイリアス**: `szr`, `vzr`, Git操作、ファイル操作
- **ディレクトリナビゲーション**: `auto_cd`, `mkcd`, ディレクトリ履歴
- **強化された履歴**: 50,000件、重複除去、セッション間共有  
- **スマート補完**: 大文字小文字無視、メニュー選択
- **iTerm2設定**: Hack Nerd Font + 最適化された設定

## セットアップ
```bash
git clone https://github.com/K0nj4c/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
