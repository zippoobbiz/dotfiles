# Java
alias mcc='mvn clean compile'
alias mcp='mvn clean package'
alias mci='mvn clean install'
alias mcd='mvn clean deploy'
alias mcps='mvn clean package -Dmaven.test.skip=true'
alias mcis='mvn clean install -Dmaven.test.skip=true'
alias mcds='mvn clean deploy -Dmaven.test.skip=true'
alias mccs='mvn clean compile -Dmaven.test.skip=true'
alias acf='ant clean full-deploy'
alias cm2='cd ~/.m2'

## versions
alias jversion='java -version'
alias jhome='/usr/libexec/java_home -V'
alias j8='export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_172` && jversion'
alias j9='export JAVA_HOME=`/usr/libexec/java_home -v 9.0.4` && jversion'
alias j10='export JAVA_HOME=`/usr/libexec/java_home -v 10.0.1` && jversion'