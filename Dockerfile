FROM ruby:2.5.1
EXPOSE 4567

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY . .
RUN bundle install
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]