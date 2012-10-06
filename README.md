## AllPlayers Omniauth Sinatra example

This app is a simple Omniauth Sinatra example linked to AllPlayers.com sign-in.


### Running

(In order to keep tracked items to a minimum, bundler manages dependencies; I've found the following lines an efficent way to run apps locally)

1. (Install and "understand" [bundler](http://gembundler.com/))
2. `bundle install --path vendor`
3. `bundle exec rackup`


### Debugging tips and notes

Debugging can be performed in a variety of way, here's some steps to use a visual debugger (like Netbeans):
(Note: at the time of writing this Netbeans 7.2 was out, but Ruby support was only in 6.9.1 and before)
(Note: at the time of writing this ruby-debug-ide had some compatibility problems with Ruby 1.9.x, so 1.8.7 was used)

1. (see "Running" above)
2. `bundle exec rdebug-ide -p7000 vendor/ruby/1.8/gems/rack-1.4.1/bin/rackup`
3. "Attach Debugger" (in app of choice) @ port 7000

