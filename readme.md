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

 > We use `rspec --init` to create a `spec/spec_helper.rb` and `.rspec` file. This gives us a skeletal rspec setup. (rspec is testing tool written in the programming language Ruby to test Ruby code. It is a behavior-driven development framework which is extensively used in production applications)

We run our tests with rspec and see 0 examples, 0 failures.

# Setting up test infrastructure

> We set up our spec_helper.rb with the things it needs to prepare Capybara and to get Capybara to test our app.(Capybara is a web-based test automation software that simulates scenarios for user stories and automates web application testing for behavior-driven software development.)

# Features Directory

> Inside our spec directory, let's create a features directory. This will house our feature tests, which will be written using Capybara. A separate directory will separate feature tests from unit tests, which will be written in raw RSpec.

`unit tests` > The unit test ensures that individual code i.e. small piece of code works fine. - Unit Test is done whenever a new class is written, any bug is fixed, or any functionality is changed.
`Integration Test` > An integration test is done to ensure that - when one or more units are integrated, it works fine. - The integration test is done when any new unit is integrated with the system or if the already existing unit case is updated.
`Feature Tests` > The feature test is the testing of features just like an actual user. Like how the actual user will use the feature. - Feature test is an end to end testing and is done when a new feature is added to the software or any existing feature is modified. 

> within the feature directory, we create feature tests to test how the actual user will use the feature.

e.g feature test

feature `Testing infrastructure` do
  scenario `Can run app and check page content` do
    visit(`/`)
    expect(page).to have_content `Testing infrastructure working!`
  end
end

We run `rspec`.
If RSpec and our `spec_helper.rb` are set up correctly, RSpec outputs 1 example, 1 failure.

We now update our app so that the homepage displays `Testing infrastructure working!`:

We run rspec. RSpec outputs 1 example, 0 failures.

# Writing Feature Tests Indepth

To write our feature test, we need to think about the exact actions a user would take

Almost every Capybara feature test involves this process:

`What does the user have to do?`
`What does the user expect to see?`

* Note that we are using Capybara's `feature` and `scenario` syntax. These work just like `describe` and `it`, and we can use them interchangeably. This is because Capybara-RSpec is simply a bunch of helpful methods on top of RSpec. Capybara itself is simply a way of driving devices, like browsers, in a programmatic way.

# rendering an index.erb route

ERB (Embedded RuBy) is a feature of Ruby that enables you to conveniently generate any kind of text, in any quantity, from templates. The templates themselves combine plain text with Ruby code for variable substitution and flow control, which makes them easy to write and maintain.

# special gemfile `launchy`

Launchy is here to make a common approach to launching external application from within ruby programs. However you need in your feature test: use Capybara's helper `save_and_open_page.`

# using sessions

A session is a short-term information store that lives on the server. It's very small, but it allows the server to store basic pieces of information, like the name of the current user, across multiple requests. In Sinatra, session is a Hash, and you can set values for its keys. session is most often used to store details of a logged in user.

# Test Helpers

We can use a helper to avoid this constant repetition. Helpers are small objects that provide basic functionality that isn't related to the main aim of a program. They are almost always used to DRY up code.

> make a new file, web_helpers.rb. We can use this file to store actions we commonly use in our feature tests.
> require this file in our spec_helper.rb (because then we can access methods defined in web_helpers.rb in any of our tests):