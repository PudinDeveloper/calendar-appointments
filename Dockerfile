FROM ruby:3.2.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y nodejs sqlite3 nano --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /usr/src/app
RUN bundle exec rake assets:precompile

EXPOSE 80
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]
