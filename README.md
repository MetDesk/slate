# To run API docs locally:
`bundle install`
`bundle exec middleman server`

# To run API docs in docker:
`docker build -t slate . && docker run -p 4567:4567 -it slate`