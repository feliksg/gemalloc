# gemalloc
Instant [jemalloc](http://jemalloc.net) injection into Ruby apps, for better performance and less memory.

# Why jemalloc?
Ruby relies on malloc(3) for its internal memory allocation. Using better malloc() implementation will boost your application performance, and supress the memory usage.

[jemalloc](http://jemalloc.net) is a malloc(3) implementation, originally developed by Jason Evans. jemalloc handles small objects better than other allocators and _generally_ gives better performance and memory usage to Ruby programs.

# Why gemalloc?
Installing jemalloc separately from Ruby is pain in some cases (e.g. Heroku, EngineYard, etc). `gemalloc` gem contains jemalloc itself within a gem, and enables instant jemalloc injection in a really easy way: install `gemalloc` gem, and launch your app with `gemalloc` command.

# Install
Install `gemalloc` gem in your application. For [bundler](https://bundler.io) based application, please add the following line into your Gemfile, and and install `gemalloc` by `bundle install`.

    gem 'gemalloc'

# Usage
Execute your application with `gemalloc` command, which is contained in `je` gem. Example command for Rails + bundler application is like follows.

    $ bundle exec gemalloc rails server

`-v` option will let you confirm jemalloc is actually injected.

    $ bundle exec gemalloc -v rails server
    => Injecting jemalloc...
    => Booting Puma
    ...

# License
