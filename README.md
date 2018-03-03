# Oh-My-Macos
记录我装过的软件和配置过程

# 使用Homebrew进行管理的软件

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## 设置brew软件的命令目录`/usr/local/bin`

```
echo 'export PATH="/usr/local/bin:$PATH"'>>~/.bashrc
source .bashrc

```

## 关于源的问题

### [使用中科源](brew/brew_ustc.sh)

```

cd "$(brew --repo)" 
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git 

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git 

echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles" >>$HOME/.bashrc


brew update 
```

### [使用原始源](brew/brew_origin.sh)
```

cd "$(brew --repo)" 
git remote set-url origin https://github.com/Homebrew/brew.git


cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin https://github.com/Homebrew/homebrew-core.git 
```

## [命令程序](brew/brew_install.sh)

```

brew install curl 
brew install wget
brew install vim
brew isntall zsh
brew install autojump
brew install git svn
brew install redis
brew install mongodb
brew install mysql
brew install tmux
brew install maven
brew isntall node
brew install lrzsz
brew install ctags

```


## [应用](brew/brew_cask_install.sh)

```

#!/bin/sh

brew cask install google-chrome 
brew cask install qq 
brew cask install firefox-developer-edition 
brew cask install neteasemusic
brew cask install calibre
brew cask install mysqlworkbench
brew cask install squirrel
brew cask install intellij-idea
brew cask install pycharm
# brew cask install dropbox
brew cask install cheatsheet
# brew cask install onepassword
brew cask install sublime-text

## 语法插件类

brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzip
brew cask install webpquicklook
brew cask install suspicious-package

# slowquitapps
brew tap dteoh/sqa
brew cask install slowquitapps
```


# ZSH设置
## 切换zsh替代bash
```
#替换默认bash
chsh -s $(which zsh)  
# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```
## 我的zsh配置
```

# oh-my-zsh 的主目录
export ZSH=/Users/rps/.oh-my-zsh
# 主题
ZSH_THEME="agnoster"
# 插件
plugins=(
  git
  zsh-autosuggestions
  git-flow
  mvn
  svn
  brew
  github
  pip
  python
  osx
  zsh-syntax-highlighting
)
# 加载oh-my-zsh
source $ZSH/oh-my-zsh.sh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# 自定义别名
source $HOME/.sh_aliases
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# 加载brew安装的命令
export PATH="/usr/local/bin:$PATH"
# 禁用更新提醒
DISABLE_UPDATE_PROMPT=true
# 禁用自动更新
DISABLE_AUTO_UPDATE=true
```

## 下载配置主题的字体
```
git clone --depth=1 https://github.com/powerline/fonts.git && sh font/install.sh
```
然后在iterm2中选中字体
# Iterm2配置

## General

## Appearance

theme--dark

show-tab-bar-even-when-one-tab

hide scrollbar

## Profiles

### color

```
git  clone https://github.com/MartinSeeler/iterm2-material-design.git

```
然后在项目中选中该配置文件

### key

设置Hotkey,激活Iterm2,我使用command+return

#### advance

设置iterm2可以使用rzsz

```
cd /usr/local && wget https://raw.githubusercontent.com/mmastrac/iterm2-zmodem/master/iterm2-send-zmodem.sh https://raw.githubusercontent.com/mmastrac/iterm2-zmodem/master/iterm2-recv-zmodem.sh

chmod +x term2-send-zmodem.sh iterm2-recv-zmodem.sh

```

在trigger中设置

|Regular |Expression  |Action | Parameters | Instant|
|:---:|:---:|:---:|:---:|:---:|
|rz waiting to receive.\*\*B0100 |Run Silent Coprocess|    /usr/local/bin/iterm2-send-zmodem.sh |   checked|
|\*\*B00000000000000 |Run Silent Coprocess    |/usr/local/bin/iterm2-recv-zmodem.sh    |checked|

# VIM配置
```
# vim的插件管理工具
# git clone --depth=1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 配置.vimrc
# git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime && sh ~/.vim_runtime/install_awesome_vimrc.sh

wget -O - https://github.com/nvie/vimrc/raw/master/autoinstall.sh | sh



```

# SublimeText3配置

## 安装插件

ConvetToUTF8
MarkdownEditing
JsFormat
Material-Theme
Git
Anoconda


## 我的配置

```json
{
    "auto_find_in_selection": true,
    "bold_folder_labels": true,
    "color_scheme": "Packages/Material Theme/schemes/Material-Theme.tmTheme",
    "dpi_scale": 1.0,
    "font_face": "Hack Regular",
    "font_size": 11,
    "highlight_line": true,
    "ignored_packages":
    [
        "Markdown"
    ],
    "save_on_focus_lost": true,
    "theme": "Material-Theme.sublime-theme",
    "translate_tabs_to_spaces": true,
    "update_check": false,
    "vintage_ctrl_keys": true,
    "remember_open_files": false,
    "vintage_start_in_command_mode": true,


}
```

# 设置ruby源
# 设置node源
# 设置squirrel五笔输入法
# 设置git

