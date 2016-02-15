# ConfMan: Conference Site Template

## What is it?

Middleman is a **single page** conference site starting point for the [Middleman](http://middlemanapp.com/) static site generator.
It features;

  - Bootstrap
  - CoffeeScript
  - Sass
  - Bourbon

It also has a **Rake** tasks to easily create page sections.

## How do I use it?

Start by installing [Bundler](http://gembundler.com/), if you don't already have it:

```bash
gem install bundler
```

Then just download the [latest source](https://github.com/nathos/amicus/archives/master) or if you prefer, clone the repository down to your local machine:

```bash
git clone https://github.com/webBoxio/middleman-confman.git my_conference
```

Finally, do a `bundle install` to install the required gems -- even Middleman itself!

Use `middleman` to do your live development and `middleman build` to render your static file output to the `/build/` directory.

For full Middleman documentation, visit the [Middleman website](http://middlemanapp.com/).

## Middleman Template

Middleman now supports project templates. To use Confman as a template, clone the Git repository into `~/.middleman`, like so:

```bash
git clone https://github.com/webBoxio/middleman-confman.git ~/.middleman/confman
```

then use the new template argument for the `middleman init` command:

```bash
middleman init my_conference --template=confman
```
