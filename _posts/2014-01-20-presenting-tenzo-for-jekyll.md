---
layout: post
title:  Presenting Tenzo
date:   2014-01-20 15:38:00
---

[Tenzo](https://github.com/jnardiello/tenzo) is a free minimal theme for Jekyll (and my first open source project). I started crafting it for my own purpose and then decided to add little extra-work and ship a ready-to-use package for the public. If you are curious to see it in action, well, you are already doing so. It runs on my personal website.

Tenzo has been crafted keeping in mind *semplicity*. It's not fancy, it's not extra-packed with features. It is essential and wants to keep the focus on you and on content.

## Typography

[Tenzo](https://github.com/jnardiello/tenzo) is based on two fonts: 'Roboto' for headlines and 'Cambo' for paragraphs. It aims to be extra-clear and a pleasure to read. All fonts are completely free, imported via Google fonts.

## Mobile first

The only thing that matters is what you write. Tenzo will behave very well when displayed on phones and tablets.

## Installation

To use Tenzo, all you have to do is to download or clone the github repo, place it in a working jekyll environment and you should almost be good to go. Yes, if you fork the repo on github, *it will be running out of the box with github pages*. Just make sure to rename the repository accordingly.

All the configuration happens in the `_config.yml`. After filling the config file, if you are running a self-hosted (or local) instance Run `Jekyll serve` and you'll be ready to start writing.

----

## Styling posts

Tenzo is pure CSS3. There's no Javascript, it doesn't use any plugin.

An important aspect to note is that it uses *custom html elements*. I have no idea how this will affect website indicization, but - at least for me - calling all the elements "div" is a nonsense - (yet, i'm not sure if it's a feature or a bug, only time will tell). Let's try to introduce some innovation.

### Headings
h1 is reserved for the article main title.
## H2 Looks like this
### H3 Looks like this
#### H4 Looks like this
##### H5 Looks like this


### Code snippets
Here is how a code snippet is displayed:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

### Images
Here is how including images looks like:
![Octocode](http://octodex.github.com/images/baracktocat.jpg)

### Lists
#### Unordered List

+ First item
+ Second item
+ Third item

#### Ordered List

1. First item
2. Second item
3. Third item

### Horizontal rule  

And if (by any chance) you want to add a horizontal rule, here is what you get:

-----------


## Bugs and Issues

Tenzo isn't perfect, but aims high. If you find any bug or if you have any suggestion do not hesitateto contribute on github.

## Credits

I took the best from the best. For all the typography work i used [typecast](http://typecast.com). Code is displayed using Pygment, code snippet style was inspired by [svbtle](http://svbtle.com).