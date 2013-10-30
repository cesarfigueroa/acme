# Acme

Acme (as in Acme Inc., because I refuse to call it “Sinatra Template”) is an opinionated template for Sinatra. It makes a handful of assumptions about what one would use in a real world Sinatra project, such as using ActiveRecord (with BCrypt), ERB (via Erubis, a faster implementation of ERB), and PostgreSQL (in production).

### Installation

#### via Git

    git clone git@github.com:cesarfigueroa/acme.git
    rm .git/

Alternatively, you can download a zip archive of the repo, and skip the above steps. Once you have the folder, remove all the `.gitkeep` files by running the following:

    find . -type f -name ".gitkeep" -exec rm {} \;

Done.

## Conventions

Acme has a handful of conventions, most of which were borrowed from Rails. The less Rails-y ones are listed below.

- Sinatra [conditions](https://github.com/sinatra/sinatra#conditions) are stored in `app/helpers/conditions`
- Middleware is stored in `lib/middleware`, and enabled in `config/middleware.rb`

## To-do

- Add SQL logging in the console, using `ActiveRecord::Base.logger = ActiveSupport::BufferedLogger.new(STDOUT)`
- Add a generator for resources (migration, model, routes, and views)
