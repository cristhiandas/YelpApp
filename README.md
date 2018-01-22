Yelp!
------

### Our task

To create a mock version of Yelp on rails that allow users to add, rate and leave reviews on restaurants.

### Our aproach

In order to learn how to use rails, we followed the "how to start" steps on the rails page and while using it for what we needed.

to achieve this goal we:
- Had a Stand Up every day to choose and separate task.
- Had a Retro every night to make an assessment of the day's activities and set new tasks for the next day.

### How to start
- Ruby version should be "2.4.1", run ```rvm install 2.4.1``` to get it, then ```rvm 2.4.1``` to use that ruby version.
- Check that "postgresql" is installed. if not, follow the [official instructions](https://www.postgresql.org/download/) on how to install it.
- Then install the bundler ```gem install bundler```, and install the gems on the "Gemfile" by running ```bundle install```.


#### Set up database

- inside the ```config``` folder create a new ```database.yml``` file. then you need to add the following info on it:
```
default: &default
 adapter: postgresql
 encoding: unicode
 pool: 5

development:
 <<: *default
 database: yelp_development
 username: your_user_name
 password: ---


test:
 <<: *default
 database: yelp_test
 username: your_user_name
 password: ---


production:
 <<: *default
 database: yelp_production
 username: your_user_name
 password: ---
```
- run ```bin/rails db:create``` on the command line
- Finally run ```bin/rails db:migrate``` on the command line

#### To run tests
- If you followed the previous steps ```bundle exec rspec``` should do the work

#### To run the program
- in the command line type ```bin/rails server```
- go to your browser and type "http://localhost:3000/"

### Tech Stack
- Ruby on Rails

### Contributors
[Cristhian Da Silva](https://github.com/cristhiandas)
[Lewis Youl](https://github.com/LewisYoul)
[Robert Clayton](https://github.com/RobertClayton)
[Tom Moir](https://github.com/tmerrr)
