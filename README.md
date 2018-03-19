# Oh-My-Macos
记录我装过的软件和配置过程

# 使用Homebrew进行管理的软件

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## 设置brew软件的命令目录`/usr/local/bin`

```sh
echo 'export PATH="/usr/local/bin:$PATH"'>>~/.bashrc
source ~/.bashrc

```

## 关于源的问题

### [使用中科源](brew/brew_ustc.sh)

```sh

cd "$(brew --repo)" && git remote set-url origin https://mirrors.ustc.edu.cn/brew.git 

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" && git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git 

echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles" >>$HOME/.bashrc

brew update 
```

### [使用原始源](brew/brew_origin.sh)
```sh

cd "$(brew --repo)" && git remote set-url origin https://github.com/Homebrew/brew.git

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" && git remote set-url origin https://github.com/Homebrew/homebrew-core.git 

```

## [命令程序](brew/brew_install.sh)

```sh

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
brew isntall jenv # java 版本管理工具

```


## [应用](brew/brew_cask_install.sh)

```sh

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
```sh
#替换默认bash
chsh -s $(which zsh)  
# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```
## 我的zsh配置
```sh

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
```sh
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

设置login commands： /usr/bin/login -qbx $(whoami)

### color

```sh
git  clone https://github.com/MartinSeeler/iterm2-material-design.git

```
然后在项目中选中该配置文件

### key

设置Hotkey,激活Iterm2,我使用command+return

#### advance

设置iterm2可以使用rzsz

```sh
cd /usr/local && wget https://raw.githubusercontent.com/mmastrac/iterm2-zmodem/master/iterm2-send-zmodem.sh https://raw.githubusercontent.com/mmastrac/iterm2-zmodem/master/iterm2-recv-zmodem.sh

chmod +x term2-send-zmodem.sh iterm2-recv-zmodem.sh

```

在trigger中设置

|Regular |Expression  |Action | Parameters | Instant|
|:---:|:---:|:---:|:---:|:---:|
|rz waiting to receive.\*\*B0100 |Run Silent Coprocess|    /usr/local/bin/iterm2-send-zmodem.sh |   checked|
|\*\*B00000000000000 |Run Silent Coprocess    |/usr/local/bin/iterm2-recv-zmodem.sh    |checked|

# VIM配置
```sh
# vim的插件管理工具
git clone --depth=1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 其他人的配置.vimrc
# git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime && sh ~/.vim_runtime/install_awesome_vimrc.sh

#wget -O - https://github.com/nvie/vimrc/raw/master/autoinstall.sh | sh

```

### 我的配置
```
" 使用非兼容模式 
set nocompatible
"
filetype off  
" 设置编码
set encoding=utf8
" 设置行号
set nu
" 设置语法
syntax enable
set ruler
" 设置当前文件被外部修改的时候自动加载
set autoread
set showcmd
set ignorecase
set backspace=2
set autoindent
set textwidth=100

" 使用vs sv 同时编辑里，窗口的快速跳转
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" vs 和 sv 新建的位置
set splitbelow
set splitright
" 设置不换行
set nowrap
" 设置tab的长度
set tabstop=4
set shiftwidth=4
" 设置括号匹配
set showmatch
"设置距离顶部和底部5行
set scrolloff=5
" 设置突出当前行
set cursorline
" 设置突出当前列
" set cursorcolumn
set ignorecase
""""""""""""""""""""""vundle 插件管理""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            

filetype plugin indent on  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


```

# SublimeText3配置

## 安装插件

Codecs33

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
```sh
gem update --system # 这里请翻墙一下
gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
bundle config mirror.https://rubygems.org https://gems.ruby-china.org

# 查看

gem sources -l
bundle config --list
```

# 设置pip源
```sh
mkdir ~/.pip
touch ~/.pip/pip.conf
```
文件的内容为：

```
[global]
timeout = 60
index-url = https://pypi.doubanio.com/simple
```

# 设置node源
```sh
npm -g i npm
npm config set registry https://registry.npm.taobao.org
```
# 设置squirrel五笔输入法
```yaml
# default.custon.yaml

patch: 
  us_keyboard_layout: true                 # 键盘选项：应用美式键盘布局
  schema_list: 
    - schema: wubi_pinyin     # 五笔拼音
  menu:
    page_size: 9
  style:
    inline_preedit: false              # 关闭内嵌编码，这样就可以显示首行的拼音
    corner_radius: 10                  # 窗口圆角半径
    border_height: 0                   # 窗口边界高度，大于圆角半径才有效果
    border_width: 0                    # 窗口边界宽度，大于圆角半径才有效果
    line_spacing: 1                    # 候选词的行间距
    spacing: 2                         # 在非内嵌编码模式下，预编辑和候选词之间的间距
    font_face: "Hack Regular"   # 字体名称
    font_point: 9
    color_scheme: solarized_rock                 # 选择配色方案
    horizontal: true                   # 候选窗横向显
  switcher:
    abbreviate_options: true
    caption: 
    fold_options: true
    hotkeys: 
    option_list_separator: "／"
    save_options:
      - full_shape
      - ascii_punct
      - simplification
      - extended_charset
  switches:                   # 注意縮進
    - name: ascii_mode
      reset: 0                # reset 0 的作用是當從其他輸入方案切換到本方案時，
      states: [ 西文, 中文 ]  # 重設爲指定的狀態，而不保留在前一個方案中設定的狀態。
    - name: full_shape        # 選擇輸入方案後通常需要立即輸入中文，故重設 ascii_mode = 0；
      states: [ 半角, 全角 ]  # 而全／半角則可沿用之前方案中的用法。
    - name: simplification
      reset: 1                # 增加這一行：默認啓用「繁→簡」轉換。
      states: [ 漢字, 汉字 ] 
# 状态通知，适当，也可设为全开（always）全关（never）
  show_notifications_when: appropriate
  ascii_composer/good_old_caps_lock: true
  ascii_composer/switch_key:
    Caps_Lock: noop
    Shift_L: commit_code
    Shift_R: noop
    Control_L: noop
    Control_R: noop

```
# 设置全局gitignore
```
# ~/.gitignore
# Folder view configuration files
.DS_Store
Desktop.ini

# Thumbnail cache files
._*
Thumbs.db

# Files that might appear on external disks
.Spotlight-V100
.Trashes

# Compiled Python files
*.pyc

# Compiled C++ files
*.out

# Application specific files
venv
node_modules
.sass-cache
*/targets/
*.class
.gitignore

```
## 配置git alias 和log 的输出格式以及密码保存
```
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.rt remote
git config --global alias.br branch
git config --global alias.lg  \"log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative\"

git config --global alias = config  --get-regexp 'alias.*'
git config --global color.ui true
git config --global user.name rainplus
git config --global user.email rainplus@foxmail.com
#配置保存密码
git config --global credential.helper store
#配置编码
git config --global core.quotepath false          # 显示 status 编码
git config --global gui.encoding utf-8            # 图形界面编码
git config --global i18n.commit.encoding utf-8    # 提交信息编码
git config --global i18n.logoutputencoding utf-8  # 输出 log 编码
echo 'export LESSCHARSET=utf-8'>>~/.zshrc

# 设置全局忽略文件
git config --global core.excludesfile ~/.gitignore_global
```
# Java 不同版本环境的配置

## 配置jenv
```sh
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
exec $SHELL -l
jenv add /Java安装绝对路径/Home
jenv global Version  # 设置Version任务全局版本
jenv enable-plugin export #导出 $JAVA_HOME 

```

# 科学上网

```sh
mkdir -p $HOME/Codes/XX-Net
git clone https://github.com/XX-net/XX-Net.git $HOME/Codes/XX-Net
echo "alias pc='proxychains4'">>$HOME/.zshrc
```
## prxoychains4的配置 $HOME/.proxychains/proxychains.conf
```
[ProxyList]
socks5	127.0.0.1	1080
```

# 配置maven

## settings.xml.aliyun
```xml

<?xml version="1.0" encoding="UTF-8"?>

<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <mirrors>
        <mirror>
            <id>nexus-aliyun</id>
            <mirrorOf>*</mirrorOf>
            <name>Nexus aliyun</name>
            <url>http://maven.aliyun.com/nexus/content/groups/public</url>
        </mirror> 
  </mirrors>

</settings>

```

## 配置动态切换mirror脚本
```sh
#!/bin/bash
PS3='Please enter your choice: '
options=("settings.xml.aliyun" "settings.xml.work" "quit")
select opt in "${options[@]}"
do
  case $opt in
  "settings.xml.aliyun")
  ln -sf $opt settings.xml
  echo "change to $opt"
  break
  ;;
  "settings-work")
  ln -sf $opt settings.xml
  echo "change to $opt"
  break
  ;;
  "quit")
  break
  ;;
  *) echo invalid option;;
  esac
done
```
## python 环境的配置

```
brew install python
brew install pyenv
brew instal pyenv-vituralenv
```

在$HOME/.zshr中添加如下的内容(顺序一定不能变)：

```
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
eval "$(jenv init -)"

if which pyenv > /dev/null; then eval "$(pyenv init -)";fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
```

把brew安装的python也添加到pyenv进行管理

```
brew install python
brew install pyenv
brew instal pyenv-vituralenv
```
在$HOME/.zshr中添加如下的内容(顺序一定不能变)：
```
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
eval "$(jenv init -)"

if which pyenv > /dev/null; then eval "$(pyenv init -)";fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
```

把brew安装的python也添加到pyenv进行管理
```
ln -s $(brew --cellar python)/* $PYENV_ROOT/versions/
```
## 修改一个macbook下idea卡顿的问题

在/private/etc/hosts文件中添加

127.0.0.1	[hostname].local 
