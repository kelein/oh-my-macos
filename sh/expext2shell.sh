#!/usr/bin/expect
# 使用expect进行登录ssh 参数为 端口 用户 地址 密码
log_user 0 
set timeout 0 
spawn -noecho ssh -p [lindex $argv 0] [lindex $argv 1]@[lindex $argv 2]
stty -echo
expect {
    "(yes/no)?"
    {send "yes\n";exp_continue}
    "password":
    {send "[lindex $argv 3]\n"}
}
send "export PS1=\"\[[lindex $argv 2]@\\\u \\\w]>\"\n"
interact
