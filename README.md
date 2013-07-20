# Acme

Acme (as in Acme Inc., because I refuse to call it “Sinatra Template”) is an opinionated...err...template for Sinatra. It makes a handful of assumptions about what one would use in a real world Sinatra project, such as using ActiveRecord (with BCrypt), ERB (via Erubis, a faster implementation of ERB), and PostgreSQL (in production).

### Installation

```
git clone git@github.com:cesarfigueroa/acme.git
rm .git/
find . -type f -name ".gitkeep" -exec rm {} \;
```

Fun? **No.** Done? **Yes.**

## Conventions

Acme has a handful of conventions, most of which were borrowed from Rails. Some are obvious, others, not so much.

- Sinatra [conditions](https://github.com/sinatra/sinatra#conditions) are stored in `app/helpers/conditions`
- Middleware is stored in `lib/middleware`, and enabled in `config/middleware.rb`
- Third-party library configurations go in `config/initializers`

## To-do

- Add SQL logging in the console, via `ActiveRecord::Base.logger = ActiveSupport::BufferedLogger.new(STDOUT)`
- Add a generator for resources (migration, model, routes, and views)
