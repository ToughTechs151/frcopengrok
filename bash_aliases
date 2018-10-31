alias starttc='sudo /opt/bitnami/apache-tomcat/bin/startup.sh'
alias stoptc='sudo /opt/bitnami/apache-tomcat/bin/shutdown.sh'
alias restarttc='stoptc ; starttc'
alias findg='find . -type f -print0 | xargs -0 grep '
unalias ls
alias ls='ls -F'

