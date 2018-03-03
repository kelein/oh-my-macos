# Oh-My-Macos
记录我装过的软件和配置过程

# 使用Homebrew进行管理的软件

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


## [命令程序](brew_install.sh)

```

brew install curl 
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

## 关于源的问题

### 使用中科源

```

cd "$(brew --repo)" 
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git 

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git 

echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles" >>$HOME/.bashrc


brew update 
```

### 使用原始源
```

cd "$(brew --repo)" 
git remote set-url origin https://github.com/Homebrew/brew.git


cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin https://github.com/Homebrew/homebrew-core.git 
```

 
