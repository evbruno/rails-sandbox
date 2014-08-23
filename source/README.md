# source/ 

Starting the rails app.

- the **source/** directory (host) is mapped at **/var/www/** (guest).
- the port forwarding is 3000 (guest) -> 9999 (host)
- go: http://localhost:9999/echo/world

```bash
$ cd /var/www
$ bundle install
$ rake db:migrate db:seed

# running on development environment
$ rails s

# running on production mode requires a secret-key
$ export SECRET_KEY_BASE=TheMeaningOfLifeIs42
$ RAILS_ENV=production rake db:migrate db:seed
$ rails s -e production
```
