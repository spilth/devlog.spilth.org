---
title: About
layout: default
---

This is a project inspired by [http://sourcefu.com/](http://sourcefu.com/) and [Dave Winer's Work Notes](http://worknotes.scripting.com/).

I wanted something lighter than IRC and Amazon EC2, so I'm using [Jekyll](https://github.com/mojombo/jekyll) with a bit of Ruby, uploaded to Amazon S3. The source is at [https://github.com/spilth/devlog.spilth.org](https://github.com/spilth/devlog.spilth.org).

## Usage

Currently here is how it works:

- I run `rake log`, enter my notes and it spits out files into the `_posts` directory using a `.devlog` extension.
- Jekyll is running in server mode (`rake server`) and uses [devlog_converter.rb](https://github.com/spilth/devlog.spilth.org/blob/master/_plugins/devlog_converter.rb) to turn the `.devlog` files into HTML, applying Markdown as it goes.
- Occassionally I run `rake upload` to upload the site to Amazon S3 using [jekyll-s3](https://github.com/laurilehmijoki/jekyll-s3).

