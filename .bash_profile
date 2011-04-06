#MySQL
export PATH=$PATH:/usr/local/mysql/bin
#Bashmarks
source ~/.local/bin/bashmarks.sh
#JRuby
export PATH=$PATH:/usr/local/jruby-1.6.0/bin
#COM2005 Crap
export CLASSPATH=$PATH:/usr/local/COM2005-Java/Classes
#Git Stuff
function gp {
    git pull --rebase
}
function gc {
    git add . |
    git commit -m $1
}
function gg {
    git push origin master
}
