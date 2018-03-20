## Boris Bikes

My first project at Makers Academy. A program simulating London's bicycle hire scheme that runs on the command line. This served as an introduction to Object-Oriented Programming, TDD, interpreting User Stories, and Pairing.

### Approach

This was my first time pairing and my first time with TDD, so my focus was on moving very slowly, test by test. I decided to build the program with two classes using separation of concerns and delegation between classes.

### Getting Started

- Clone the repo
- Start IRB
- Require './lib/bike.rb'
- Require './lib/dockingstation.rb'
- Have fun!

### Testing

At this point I didn't know what a feature test was and so didn't have a firm grasp of good unit testing, so these tests are a poor hybrid with unnecessary dependencies - this would be the first thing to fix if I were to work on this project further.

- At the root of the repo run ```gem install rspec```
- To run the tests, navigate to the root of the repo and run ```rspec```

### User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to be able to return broken bikes and report them as broken

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```
