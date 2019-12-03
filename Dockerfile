  
FROM php:7.2-cli

#LABEL "com.github.actions.name"="OSKAR-phpcs"
#LABEL "com.github.actions.description"="check php coding standards"
#LABEL "com.github.actions.icon"="check"
#LABEL "com.github.actions.color"="blue"

#LABEL "repository"="http://github.com/oskarstark/phpcs-ga"
#LABEL "homepage"="http://github.com/actions"
#LABEL "maintainer"="Oskar Stark <oskarstark@googlemail.com>"
RUN apt-get -y install git
RUN pear install PHP_CodeSniffer-2.9.0
RUN cd /usr/local/lib/php/PHP/CodeSniffer/Standards/
RUN git clone git://github.com/ludofleury/symfony-coding-standard.git Symfony


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
