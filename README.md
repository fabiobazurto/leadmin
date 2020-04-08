# README

Una aplicación web responsiva que realiza las operaciones CRUD para: Store, Category y Product.

## ❗️Requirements

* Ruby: 2.6.6
* RubyGems: 3.0.8
* Rails 5.2.0
* MariaDB:  Ver 15.1 Distrib 10.1.44-MariaDB

## System Dependences

* Si vas a usar MariaDB:libmariadb-dev
* Si vas a usar MySQL: libmysqlclient-dev

sudo apt-get install libmariadb-dev
sudo apt-get install libmysqlclient-dev

## Installation

# First, clone the repository

git clone https://github.com/fabiobazurto/leadmin.git

# For development environment, you need to declare this environment variables:

For Linux, run this commands in your terminal

export APPUSER={YOUR DATABASE USER such as root or leadmin}
export APPPASSWORD={YOUR DATABASE USER PASSWORD}
export APPLOCALHOST={DATABASE HOST IP, use localhost if you are running the webapp in your laptop}

For production environment, you need to declare LEADMIN_DATABASE_PASSWORD and bind your local IP

export LEADMIN_DATABASE_PASSWORD={YOUR PRODUCTION DATABASE PASSWORD }

# bundle install

# rake db:create
# rake db:setup

If you have problems with the connection using /tmp/mysql.sock, you need to bind your local mysql socket to /tmp/mysql.sock

# First, find your mysql.sock location

mysqladmin -u root -p variables | grep socket

# Create a symbolic link to your local mysql.sock in /tmp/mysql.sock

ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock

Finally, try again

rake db:create
rake db:setup


## Testing

In order to run test specs you need to run this commands:

#For models
bundle exec rspec spec/models

#For views
bundle exec rspec spec/views/stores/index.html.erb_spec.rb
bundle exec rspec spec/views/products/show.html.erb_spec.rb

#Feature/Integration
bundle exec rspec spec/feature/assign_product2store_spec.rb
bundle exec rspec spec/feature/create_store_spec.rb
