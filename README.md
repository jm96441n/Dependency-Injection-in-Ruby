# Dependency Injection in Ruby

## Table of Contents
- [What is Dependency Injection?](#what-is-dependency-injection)
- [Navigating this Repo](#navigating-this-repo)
- [Changes in this Branch](#changes-in-this-branch)
- [Read More](#read-more)

## What is Dependency Injection?

Dependency injection is a powerful technique for removing tightly coupled dependencies between your models in your application. It involves removing hard coded dependencies in your model and moving the dependency to be passed in via the `initialize` method. 

This provides a lot of benefits, main being that it makes our code more extensible and flexible. By removing the hard coded dependency it allows us to expand on different types of the dependency to use. 

In the examples shown in this repo, as you move through the branches you'll see how it's easier to subclass `Engine` to the different types of engines by removing the instantiation of the `Engine` class in the `Vehicle` class.


## Navigating this Repo

So this repo is organized by branches. As you move between branches, you'll see the differences and changes made on in our `Vehicle` and `Engine` classes to loosen up the coupling between them, and allow for different types of engines to be supplied with no changes necessary in the `Vehicle` class. 

To go in order of the refactors needed to get to a stable implementation of dependency injection moves between the branches in the order listed below:

1) `initial_build` 
2) `configurable_engine`
3) `use_dependency_injection`
4) `subclass_engine`
5) `subclass_vehicle`

After switching branches, be sure to check the section below (Changes in this Branch) to get an explanation of what's different in this branch, and how it affects our codebase.

## Changes in this Branch

Right now there's nothing here! That's on purpose, as you move between the branches check this section first to get an idea of what you'll be looking for in terms of changes to the existing classes, and what new ones might be introduced.

## Read More

Some extra links below if you want to read up more on dependency injection in ruby:
1) [Ruby Blog Pro -- Ruby - Dependency Injection](http://rubyblog.pro/2016/10/ruby-dependency-injection)
2) [Sandi Metz -- SOLID Design Principles - Dependency Injection](https://www.sandimetz.com/blog/2009/03/21/solid-design-principles)
3) [Brandon Hilkert -- A Ruby Refactor: Dependency Injection Options](https://brandonhilkert.com/blog/a-ruby-refactor-exploring-dependency-injection-options/)
4) [Practical Object Oriented Design in Ruby: Managing Dependencies](http://www.informit.com/articles/article.aspx?p=1946176&seqNum=2)
