cd "$(brew --repo)" 
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git 

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git 

echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles" >>$HOME/.bashrc


brew update 
