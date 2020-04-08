# README

Responsive web application that manages: Store, Category y Product.

## ❗️Requirements

* Ruby: 2.6.6
* RubyGems: 3.0.8
* Rails 5.2.0
* MariaDB:  Ver 15.1 Distrib 10.1.44-MariaDB

## System Dependences

Tool                  | Description
--------------------- | -----------
libmariadb-dev        | If you have MariaDB database engine
libmysqlclient-dev    | If you have MySQL database engine

sudo apt-get install libmariadb-dev

or,

sudo apt-get install libmysqlclient-dev

## Installation

1. First, clone the repository
    ```bash
    git clone https://github.com/fabiobazurto/leadmin.git
    ```
2. Set your database credencials
   
   For development environment, you need to declare this environment variables:  
   ```
   # Use this command in linux terminal

   export APPUSER={YOUR DATABASE USER such as root or leadmin}

   export APPPASSWORD={YOUR DATABASE USER PASSWORD}

   export APPLOCALHOST={DATABASE HOST IP, use localhost if you are running the webapp in your laptop}
   ```
   For production environment, you need to declare LEADMIN_DATABASE_PASSWORD and bind your local IP
   ```
   export LEADMIN_DATABASE_PASSWORD={YOUR PRODUCTION DATABASE PASSWORD }
   ```

3. Install gems
    ```
    bundle install
    ```
    
4. Create development and test databases
    ```
    rake db:create
    ```
    
5. Populate your database
    ```
    rake db:setup
    ```
# Database initialization

You can choose between rake commands or mysqldump.

If you choose mysqldump, you can find the database dump into /db folder.

* leadmin_development.sql
* leadmin_test.sql

For mysqldump option, run this command
```
mysqldump -u {YOUR DB USER} -p leadmin_development < db/leadmin_development.sql

mysqldump -u {YOUR DB USER} -p leadmin_test < db/leadmin_test.sql
```

# Troubleshooting

If you have problems with the connection using /tmp/mysql.sock, you need to bind your local mysql socket to /tmp/mysql.sock

1. First, find your mysql.sock location
  ```
  mysqladmin -u root -p variables | grep socket
  ```

2. Create a symbolic link to your local mysql.sock in /tmp/mysql.sock
    ```
    ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock
    ```

3. Finally, try again
    ```
    rake db:create
    rake db:setup
    ```

# Testing

In order to run test specs you need to run this commands:

```

#For models
bundle exec rspec spec/models

#For views
bundle exec rspec spec/views/stores/index.html.erb_spec.rb
bundle exec rspec spec/views/products/show.html.erb_spec.rb

#Feature/Integration
bundle exec rspec spec/feature/assign_product2store_spec.rb
bundle exec rspec spec/feature/create_store_spec.rb

```

