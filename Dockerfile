FROM ruby:2.4.0
MAINTAINER Hiroshi Yui <hiroshi@ghostsinthelab.org>

# prepare WORKDIR for our project
RUN mkdir -p /srv/www/kde.tw
WORKDIR /srv/www/kde.tw
COPY . /srv/www/kde.tw

# build project
RUN gem install bundler
RUN bundle install

CMD jekyll server -H 0.0.0.0
