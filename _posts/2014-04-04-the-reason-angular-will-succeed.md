---
layout: post
title:  The reason Angular JS will succeed
date:   2014-04-04 15:38:00
---

Today I came across [this article - "The reason AngularJS will fail"](http://okmaya.com/2014/03/12/the-reason-angular-js-will-fail/).

Author argues that Angular *is* complex: complex to approach, complex to learn, complex to use and while i agree with him on this point, pretty much everything else he mentions is just dead wrong. What made me worry about that article isn't the mediocre level of the author, but the fact that the article gained traction and reached the top of HN (gathering way more attention than deserved and spreading nonsense).

I hope that this post was written with the clear goal of helping others in choosing the right tool for their projects (personal & professional), trying to give clear and objective opinions after having gained some experience on the topic.

## Angular Is Not a Library

I see this misunderstanding coming up every single time i speak about Angular with people approaching it for the first time.

To make this point crystal clear i will borrow [Martin Fowler's definitions](http://martinfowler.com/bliki/InversionOfControl.html).

A library is:
> A set of functions that you can call, these days usually organized into classes. Each call does some work and returns control to the client.

While a framework:
> A framework embodies some abstract design, with more behavior built in. In order to use it you need to insert your behavior into various places in the framework either by subclassing or by plugging in your own classes. The framework's code then calls your code at these points.

Comparing the two is complete nonsense. jQuery gives you mainly object and methods. Angular gives you a design.

## The real value of Angular
Angular is unique when it comes to front-end frameworks because of one, super-important, point: it makes possible to test Javascript front-end applications without driving you insane. 

Have you ever worked on a project *so complex* that no single human would ever be able to have a deep knowledge of all of its the code/domains? Like a huge App. Used by millions. With some really complex and critical architecture and thousands of lines of code.

Before deploying such an application you need to make sure that everything is fine and works as expected, downtime would mean hundreds of thousands of dollars lost. Someone might even die. How do you do that? There's only one way: with automatic tests. There are no alternatives.

And here is the point: Javascript, with its DOM manipulation, async calls, etc.. has been always **very** problematic when you had to make sure everything worked as expected before shipping to end users.

If you aim to write clean, good, reliable code then tests are a must and this is the problem Angular aims to solve: Making Javascript functionalities testable and your code maintainable over time.

On contrary, jQuery (and most of the libraries/frameworks out there) will cause your code to be completely untestable driving your app to unpredictable behaviors.

## Yet, getting Angular right is hard work

I realize that Angular is indeed quite hard. At first it felt like *black magic*. To overcome this feeling requires a lot of hard work and some background in programming: essentially you need to know well OOP and Design Patterns. The JS situation has changed and i have little doubt regarding the fact that it is reaching maturity. What does this means? More complex tools, better written and structured code but - most importantly - new tools (such as Angular) and opportunities.

## Angular and existing libraries

Angular was not meant to be a replacement for jQuery or other libraries. It sucks with DOM manipulation simply because it was not designed for it, as it was not designed for load of other things. The good news is that jQuery and Angular still completes each others perfectly. You can integrate jQuery seamlessly into Angular apps (this is one of the reasons for Directives to exist). Just make sure to delegate all the business logic to Angular and all the other aspect to your library.

## Downsides

Angular is far from being perfect. The main thing that makes me cringe about it is how slow it can become when you have a lot of elements in your DOM (from my home-made-pizza benchmarking tests we are talking about 15.000 elements, which may sound like a lot but in fact they are not if you are working on a decent size project). There's still a lot to do but the right path has been taken.

## What next

If you want to have a deeper understanding about Angular i totally recommend you to watch the clean code talks by Hevery. They are simply mind-blowing and will help you understanding why Angular is truly awesome.

Whenever you will need to decide if to use Angular or not, keep in mind its unique testability, the great community behind it and how it will help when your project will be **BIG**.

I hope this post helped anyhow, if you have questions or want to ping me feel free to do it [on twitter](http://twitter.com/jnardiello).