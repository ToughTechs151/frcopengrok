alias starttc='sudo -u tomcat /opt/bitnami/tomcat/bin/startup.sh'
alias stoptc='sudo -u tomcat /opt/bitnami/tomcat/bin/shutdown.sh'
alias restarttc='stoptc ; starttc'
alias findg='find . -type f -print0 | xargs -0 grep '
[[ $(type -t ls) == "alias" ]] && unalias ls
alias ls='ls -F'

