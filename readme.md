#  Getting Started with Battle - Intro_To_The_Web

# Gemfile & Gemfile.lock

> Let's add a Gemfile for our dependencies using bundle init
 `Including a Gemfile means any future developer starting our project can install all project dependencies by running bundle` our gemfile is a list of all gems (ruby software packages) that you want to include in the project. Dependencies in project management deal with managing and scheduling project tasks while keeping their sequences and requirements in mind. If task B requires the completion of task A, then we’ll say that task B is dependent on task A. 

 > Once in Gemfile and dependencies added use bundle to install those dependencies to our project (generating a Gemfile.lock).

 > We create an app.rb file in the root of our project. 
 > Inside our app.rb, we have an application Battle set up to use Sinatra's Modular Style(Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort, which in turn sets up a route to a particular page)
 `Sinatra's Modular Style allows you to use a slimmed-down version of Sinatra that is more modular and portable.`

 # rackup

 > In the root of our project, we create a config.ru file that we can use to run our app:
 > We run it with `rackup`. Our console outputs a port and we use that to create a URL like localhost:XXXX. We check we can visit that URL in our web browser and see Hello Battle!.

 # rspec

 >We use `rspec --init` to create a `spec/spec_helper.rb` and `.rspec` file. This gives us a skeletal rspec setup. (rspec is testing tool written in the programming language Ruby to test Ruby code. It is a behavior-driven development framework which is extensively used in production applications)

We run our tests with rspec and see 0 examples, 0 failures.