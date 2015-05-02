# Acme

Acme (as in Acme Inc., because I refuse to call it “Sinatra Template”) is an opinionated template for Sinatra. It makes a handful of assumptions about what one would use in a real world Sinatra project, such as using Sequel (with PostgreSQL) and ERB (via Erubis, a faster implementation of ERB).

### Installation

#### via Git

    git clone git@github.com:cesarfigueroa/acme.git
    rm .git/

Alternatively, you can download a [zip](https://github.com/cesarfigueroa/acme/archive/master.zip) of the repository, and skip the steps above. Inside the repository folder, you can remove all the `.gitkeep` files by executing the following:

    find . -type f -name ".gitkeep" -exec rm {} \;

And finally:

    bundle install

Done.

## Conventions

Acme has a handful of conventions, many of which were borrowed from Rails. The less Rails-like ones are listed below.

- Sinatra [conditions](https://github.com/sinatra/sinatra#conditions) are stored in `app/helpers/conditions`
- Routes are added in `config/routes.rb`
- Middleware is configured in `config/middleware.rb`
