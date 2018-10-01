# Dependency Injection in Ruby

## Table of Contents
- [What is Dependency Injection?](#what-is-dependency-injection)
- [Navigating this Repo](#navigating-this-repo)
- [Changes in this Branch](#changes-in-this-branch)
- [Read More](#read-more)

## What is Dependency Injection?

Dependency injection is a powerful technique for removing tightly coupled dependencies between your models in your 
application. It involves removing hard coded dependencies in your model and moving the dependency to be passed in via the `initialize` method. 

This provides a lot of benefits, main being that it makes our code more extensible and flexible. By removing the hard 
coded dependency it allows us to expand on different types of the dependency to use. 

In the examples shown in this repo, as you move through the branches you'll see how it's easier to subclass `Engine` 
to the different types of engines by removing the instantiation of the `Engine` class in the `Vehicle` class.


## Navigating this Repo

So this repo is organized by branches. As you move between branches, you'll see the differences and changes made on in 
our `Vehicle` and `Engine` classes to loosen up the coupling between them, and allow for different types of engines to 
be supplied with no changes necessary in the `Vehicle` class. 

To go in order of the refactors needed to get to a stable implementation of dependency injection moves between the
branches in the order listed below:

1) `initial_build` 
2) `configurable_engine`
3) `use_dependency_injection`
4) `subclass_engine`
5) `subclass_vehicle`

After switcing branches, be sure to check the section below (Changes in this Branch) to get an explanation of what's 
different in this branch, and how it affects our codebase.

## Changes in this Branch

Now we'll see how dependency injection will make subclassing the `Vehicle` class much easier. In our first implementation,
if we wanted to add a new type of vehicle we would have to define in that class exactly which engine it would have, and 
we would have to repeat that for each and every new class. You can see how that would be tedious. By moving the dependency on 
the `Engine` class to the initialize method on vehicles, we're free to create as many subclasses of `Vehicle` as we would like 
and configure the engine to be used when calling that class. This also allows us to have different engines for different instances 
of each subclass (e.g. not every truck would use the same engine). 

As always, see this in action in our `runner.rb` file and can be run by running `ruby runner.rb` in the command line.

## Read More

Some extra links below if you want to read up more on dependency injection in ruby:
1) [Ruby Blog Pro -- Ruby - Dependency Injection](http://rubyblog.pro/2016/10/ruby-dependency-injection)
2) [Sandi Metz -- SOLID Design Principles - Dependency Injection](https://www.sandimetz.com/blog/2009/03/21/solid-design-principles)
3) [Brandon Hilkert -- A Ruby Refactor: Dependency Injection Options](https://brandonhilkert.com/blog/a-ruby-refactor-exploring-dependency-injection-options/)
4) [Practical Object Oriented Design in Ruby: Managing Dependencies](http://www.informit.com/articles/article.aspx?p=1946176&seqNum=2)
