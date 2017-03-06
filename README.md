## Battle
#### Technologies: Ruby, RSpec, Capybara, Sinatra
### Week 3 pair programming challenge for [Makers Academy] (http://www.makersacademy.com)
[Outline](#outline) | [User Stories](#user-stories) | [Gems](#gems) | [Usage Instructions](#usage-instructions) 

## Brief
You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

Create a new git repository and write code to fulfill the brief to the best of your ability. We will be looking for clean, well tested code in your choice of technology. In addition, the last sentence of the brief implies that you should consider how the code could easily be extended to add an as-yet-unknown data store.

## Outline
My first choice in approaching this task was to use Sinatra as the framework for the application.  I felt that it would be able to provide everything required for the task without any unecessary complexity.  Following on from this decision, I chose to create a number of user stories based on the provided brief in order to help guide the development process.

All of my code was written test first, and my initial implementation used sessions to persist data across requests.  Once this was working as expected, I also included a FakeDb model, in order to better simulate the possible later use of a database.  

Given more time, my next step would have been to make it so that multiple data objects could be stored within the FakeDb model, in order to more accurately simulate the use of a database.

## User Stories
```
As a user,
So that I can remember important information,
I would like to be able to store information indexed to a key word.

As a user,
So that I can retrieve important information,
I would like to be able to retrieve information by entering a key work.

As a user,
So that I can update information,
I would like to be able to overwrite my previously stored information.

As a user,
So that I can avoid confusion,
I would like to see an error message if something goes wrong.
```

## Gems
```ruby
gem 'sinatra'
gem 'sinatra-flash'

group :test do
  gem 'rspec'
  gem 'rspec-sinatra'
  gem 'capybara'
  gem 'selenium-webdriver'
end
```

## Usage Instructions
* clone the repo and run bundle
```shell
$ git clone https://github.com/samjones1001/database-tech-test
$ cd database-tech-test
$ rvm 2.3.0
$ bundle
```
* start up sinatra
```shell
$ ruby app.rb 
```
* in your browser, navigate to http://localhost:4000/ 

* to add a data point, navigate to http://localhost:4000/set?somekey=somevalue
* to retrieve your data point, navigate to http://localhost:4000/get?somekey


