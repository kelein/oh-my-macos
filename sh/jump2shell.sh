#!/usr/bin/expect
# 使用expect进行登录ssh 参数为 端口 用户 地址 密码

set timeout 0 
spawn ssh -p [lindex $argv 0] [lindex $argv 1]@[lindex $argv 2]
expect {
    "(yes/no)?"
    {send "yes\n";exp_continue}
    "password":
    {send "[lindex $argv 3]\n"]}
}
set timeout 3
send "ssh -p [lindex $argv 4] [lindex $argv 5]@[lindex $argv 6]\n"
send "export PS1=\"\[[lindex $argv 6]@\\\u \\\w]>\"\n"
interact
