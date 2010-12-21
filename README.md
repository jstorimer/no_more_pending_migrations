no_more_pending_migrations
=====================

Ok, here's the situation: You're working on a Rails project that has a big test suite. It's big enough that you're not apt to just type `rake test` and then browse the latest on github again while you wait. So you decide to type `rake test` and then go to lunch, or get a coffee, or whatever.

But when you get back you see this nonsense:

    You have 1 pending migrations:
      20101221034019 CreateBazingas
    Run "rake db:migrate" to update your database then try again.

What!? You didn't run my tests!? But...but...the command you suggested that I run is embedded right there in the output. Why won't you just run it for me!?!?

That's what this gem does.

Here's how that could have gone down:

    You have 1 pending migrations:
      20101221034019 CreateBazingas

    Let's run these migrations!

    ==  CreateBazingas: migrating =================================================
    -- create_table(:bazingas)
       -> 0.0013s
    ==  CreateBazingas: migrated (0.0014s) ========================================

    Loaded suite /Users/jessestorimer/.rvm/gems/ree-1.8.7-2010.02@global/gems/rake-0.8.7/lib/rake/rake_test_loader
    Started
    ......
    Finished in 0.020282 seconds.

Usage
=====

Stick it in your Gemfile.

    gem 'no_more_pending_migrations', :group => :development

I wouldn't suggest enabling this for anything but your development env.

This'll only work with Rails 3 since it uses the new railties stuff.

![Monkeys!](http://www.emblibrary.com/el/product_images/B1319.jpg)
