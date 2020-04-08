# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.6

* System dependencies
sudo apt-get install libmariadb-dev
sudo apt-get install libmysqlclient-dev

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
bundle install

export APPUSER=root
export APPPASSWORD=kame123+
export APPLOCALHOST=localhost

mysqladmin -u root -p variables | grep socket

ln -s /var/lib/mysql/mysql.sock /tmp/mysql.sock

rake db:create
rake db:setup
