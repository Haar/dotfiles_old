#MySQL
export PATH=$PATH:/usr/local/mysql/bin
#Bashmarks
source ~/.bin/bashmarks.sh
#SWI Prolog
PATH=$PATH:/opt/local/bin
#JRuby
export PATH=$PATH:/usr/local/jruby-1.6.0/bin
#COM2005 Crap
export CLASSPATH=$PATH:/usr/local/COM2005-Java/Classes
#Ruby Stuff
export PATH=$PATH:/usr/local/Cellar/ruby/1.9.2-p180/bin
#Haskell Stuff
export PATH=$PATH:~/Library/Haskell/bin
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

