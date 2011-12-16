$ env 
TERM_PROGRAM=Apple_Terminal
TERM=xterm
SHELL=/bin/bash
OLDPWD=/Users/zed/temp
USER=zed
COMMAND_MODE=unix2003
PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
PWD=/Users/zed/
LANG=en_US.UTF-8
PS1=$ 
SHLVL=1
HOME=/Users/zed
LOGNAME=zed
_=/usr/bin/env
$ env | grep zed
OLDPWD=/Users/zed//temp
USER=zed
PWD=/Users/zed/
HOME=/Users/zed
LOGNAME=zed
$ echo $USER
zed
$ echo $PWD
/Users/zed/
$ export TESTING="1 2 3"
$ echo $TESTING
1 2 3
$ env | grep TESTING
TESTING=1 2 3
$
