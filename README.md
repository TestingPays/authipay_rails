# Authipay Rails Example Application

Integrated example application using [Authipay's Connect API](http://www.authipay.com/assets/authipay-connect.pdf).

## Requirements
In order to run this application you will need the following:
- [ruby](https://www.ruby-lang.org/en/) (version 2.2+)
  - We recommend you use [rvm](https://rvm.io/) to manage your ruby versions
  - If you are using windows you can find a ruby installer [here](http://rubyinstaller.org/downloads/)

- [node.js](https://nodejs.org/en/) (latest LTS)

## Setup

Firstly pull down the repo.

``` bash
$ git clone https://github.com/testingpays/authipay_rails.git
```

Next enter the directory and install the applications dependencies using bundler

``` bash
$ gem install bundler
$ bundle install
```

## Running the application

Now that we have the application installed and our api keys setup we can start using the application. firstly lets run the tests to make everything is in order.

```bash
$ rails test
```

Your tests should have ran successfully. now to run the application use the following command.

```bash
$ rails server
```

Your application should now be running [locally](http://localhost:3000/charges).


### API Keys


### Developing with Testing Pays

In order to work with [Testing Pays](http://www.testingpays.com) you need to provide your API Key. You can find that in the [instructions](https://admin.testingpays.com/) or in your team page.

### Unit Testing with Testing Pays

Testing Pays makes testing many types of responses easy. In order to get a particular response simply pass in the associated response mapping. E.g.

```ruby
amount: 0   # => success
```

For a full list of response mappings see the [Test tab of your sim](https://admin.testingpays.com/).

