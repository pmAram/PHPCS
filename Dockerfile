  
FROM php:7.3-alpine

LABEL "com.github.actions.name"="OSKAR-phpcs"
LABEL "com.github.actions.description"="check php coding standards"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/oskarstark/phpcs-ga"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Oskar Stark <oskarstark@googlemail.com>"

RUN cp ./phpcs.phar /usr/local/bin/phpcs
RUN chmod +x /usr/local/bin/phpcs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
