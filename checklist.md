- [ ] Open "Terminal" window.
  - [ ] Change directory (CD) to where you would like the app to exist.
  - [ ] In command line, input: "rails new APPNAME".
  - [ ] CD into your new app's directory.
- [ ] In command line, use the following inputs to create a new git repository and connect it to your GitHub repo:
  - [ ]  git init
  - [ ] git add .
  - [ ] git commit -m "first commit"
  - [ ] git remote add origin "THE URL FROM YOUR GITHUB REPO"
  - [ ] git push -u origin master
- [ ] Add gems to your Gemfile that you expect to use
  - [ ] Gems required for Heroku uploads:
    - [ ] gem 'pg'
    - [ ] group :production do
        gem 'rails_12factor'
        gem 'thin'
      end
  - [ ] Run "bundle install" in your command line
- [ ] Modify the file 'database.yml' to support a postgres database:
  - [ ] development:
  adapter: postgresql
  database: APPNAME_dev
  host: localhost
  - [ ] test:
  adapter: postgresql
  database: APPNAME_test
  host: localhost
- [ ] Create a file in the root of your app named "Procfile"
  - [ ] Add this line "web: bundle exec thin start -p $PORT"
- [ ] Open your ".gitignore" file and add the following:
  - [ ] .idea
  - [ ] /public/uploads
  - [ ] Create your database and run your first migration with the following command line inputs:
  - [ ] rake db:create
  - [ ] rake db:migrate
- [ ] Create a heroku app with these inputs in the command line:
  - [ ] heroku create
  - [ ] git push heroku master
Success! Make it yours!
