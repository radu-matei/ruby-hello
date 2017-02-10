FROM ruby:latest
RUN mkdir /app
WORKDIR /app
ADD . /app
RUN bundle install
CMD bundle exec puma config.ru -p $PORT -e production