#!/bin/bash
# 使用安装sh的脚本

cd $HOME/.m2 && curl -O https://raw.githubusercontent.com/rainplus/oh-my-macos/master/sh/mvnmirror.sh


ln -fs $HOME/.m2/mvnmirror.sh /usr/local/bin/mvnmirror

cd $HOME/.ssh && curl -O https://raw.githubusercontent.com/rainplus/oh-my-macos/master/sh/expext2shell.sh

curl https://raw.githubusercontent.com/rainplus/oh-my-macos/master/sh/jump2shell.sh

chmod 777 $HOME/.m2/mvnmirror.sh $HOME/.ssh/expect2shell.sh $HOME/.ssh/jump2shell.sh

