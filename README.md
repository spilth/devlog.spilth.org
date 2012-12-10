A Jekyll-based developer notes tool.

## Requirements

- [Ruby](http://www.ruby-lang.org/en/)
- [Bundler](http://gembundler.com/)

I suggest using [RVM](https://rvm.io/) to get both easily.

## Installation

After forking/cloning the repository, install dependency gems with the `bundle` command.

## Usage

    rake log      # To start taking notes, Control-C to stop
    rake generate # To generate the Jekyll site
    rake server   # To run a local server that auto-generates with any new notes at http://localhost:4000/
    rake upload   # Upload site to Amazon S3 using jekyll-s3

### Amazon S3

For uploading to Amazon S3 you will need to provide a `_jekyll_s3.yml` file with the follwing format:

    s3_id: YOUR_AWS_S3_ACCESS_KEY_ID
    s3_secret: YOUR_AWS_S3_SECRET_ACCESS_KEY
    s3_bucket: your.blog.bucket.com
    cloudfront_distribution_id: YOUR_CLOUDFRONT_DIST_ID (OPTIONAL)

See the [jekyll-s3 Readme](https://github.com/laurilehmijoki/jekyll-s3) for more information.

