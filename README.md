# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - 2.5.5
  
* Rails version
  - 6.0.3

* System dependencies
  - Mysql DBMS (>= 5.6)
  - RVM
  - NVM
 
* Project Configuration
  - bundle 
  - Run NPM install or yarn install
  - Update the database.yml
  - rake db:create
  - rake db:migrate
  - rake db:seed (it will create a manager user with email: test@test.com, password: password)
 
  - rails server(Run the rais server)

* How to run the test suit
  - Not implemented yet

* Services (job queues, cache servers, search engines, etc.)
   - Setup active job for background processing(long runing task)
   - Using letter_opener for viewing the sent email, so that it work without any config without in dev env(https://github.com/ryanb/letter_opener)

* Other consideration
  - Due to time constraint, did not focus much on UI
  - Email will send using letter opener.
  - For simplicity did not consider assets owner as active user in the system, and so just take owner_email for sending emai. However we can maintain a separate model for assets owner if we wish to store more details about them.
  - Currently there are two roles, User and Manager.
  - For now(simplicity), sign up page allow to sign up as manager but that should be remove before going live. 
  - Manager(or admin) related could be separted in different namespace, for more structure code.

  - Devise is used for authentication
  - User with manager previliage can perform CRUD operation for assets
  - Specs are not implemented yet that is something we must cover
  - Pagination is implemented yet but if our assets grow, we should consider implementing 

