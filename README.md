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
- in the command line type ```psql psotgres```, then ```create database yelp_test;``` you should see ```CREATE DATABASE``` as an output, now ```create database yelp_development;``` now close postgresql ```\q```

#### To run tests
- If you followed the previous steps ```bundle exec rspec``` should do the work

#### To run the program
- in the command line type ```rackup config.ru -p 2000```
- go to your browser and type "http://localhost:2000/"

### Tech Stack
- Ruby on Rails

### Contributors
[Cristhian Da Silva](https://github.com/cristhiandas)
[Lewis Youl](https://github.com/LewisYoul)
[Robert Clayton](https://github.com/RobertClayton)
[Tom Moir](https://github.com/tmerrr)
