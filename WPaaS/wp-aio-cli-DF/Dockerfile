FROM lindison/wordpress-aio

LABEL activity="wp-cli-install"

RUN apt-get update &&\
    apt-get install wget
RUN wget wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp && chmod +x /usr/local/bin/wp
