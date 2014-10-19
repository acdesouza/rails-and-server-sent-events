# Rails 4 ActionController::Live and HTML5 Server Sent Events

Using Browser feature SSE to retrieve changes on a Rails4 application stream

## Steps

  1. rails _4.0.0_ new <project>
  1. Add Puma server, witch support Server Sent Events: http://puma.io/
  1. Allow concurrency on development enviroment
  1. Add helper to write on stream
  1. Scaffold a model to use on live test
  1. Add stream capability to UsersController, using ActionController::Live
  1. Provide stream, of last user changed, on UsersController and consumes using HTML5 Server Sent Event

## How to see it working

### Easy way

 [![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/acdesouza/rails-and-server-sent-events)

### Local way

  1. git clone https://github.com/acdesouza/rails-and-server-sent-events.git .
  1. bundle install
  1. bundle exec rake db:create db:migrate
  1. bundle exec rails s
  1. On Browser 1: [User watch stream](http://localhost:3000)
  1. On Browser 2: [User watch stream](http://localhost:3000)
  1. On Browser 3: [User list](http://localhost:3000/users)
  1. Redimension browser's windows to make browser visible
  1. On Browser 3: Create an user
  1. On Browser 1,2: See they receiving the update

## Fonts
  * [Killing a library - Alex MacCaw](http://blog.alexmaccaw.com/killing-a-library)
  * [IS IT LIVE? - TernderLove](http://tenderlovemaking.com/2012/07/30/is-it-live.html)
  * [Rails 4 Server Sent Events with ActionController::Live and PostgreSQL NOTIFY/LISTEN - Nick Gauthier](http://ngauthier.com/2013/02/rails-4-sse-notify-listen.html)
  * [Live Stream & Server Sent Events - Tomás Kramár](http://www.slideshare.net/tkramar/sse-14502043)
  * [Server-Sent Events vs. WebSockets - Alex Recarey](http://stackoverflow.com/a/5326159/436552)
  * [Can I use Server-sent DOM events? - @Fyrd](http://caniuse.com/eventsource)

