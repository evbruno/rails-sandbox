# Rails Sandbox

Just another **Hello World** application.

See also https://github.com/evbruno/scala-web-sandbox.

## vagrant/

Starting the server.

```bash
# install the plugin:
$ vagrant install plugin vagrant-vbguest

# go:
$ vagrant up
$ vagrant ssh

# also:
$ vagrant halt
$ vagrant reload -provision
$ vagrant destroy

# in the box, stop/start mysqld:
$ sudo service mysqld stop
```

**By the way, this vagrant-puppet-box was generated by https://puphpet.com/.** :clap:

## source/ 

Starting the rails app.

- the **source/** directory (host) is mapped at **/var/www/** (guest).
- the port forwarding is 3000 (guest) -> 9999 (host)
- go: http://localhost:9999/

```bash
$ cd /var/www
$ bundle install
$ rake db:migrate
# running on development environment (webbrick)
$ rails s

# running on production mode (puma) requires a secret-key
$ export SECRET_KEY_BASE=TheMeaningOfLifeIs42
$ RAILS_ENV=production rake db:migrate
$ rails s -e production
```


*HappyHacking*
