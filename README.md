A Jekyll-based developer notes tool.

## Requirements

- Ruby
- Bundler

## Installation

After forking/cloning the repository, install dependency gems with the `bundle` command.

## Usage

    rake log # to start taking notes
    rake generate # to generate the Jekyll site
    rake server # to run a local server that auto-generates with any new notes
    rake upload # upload site to Amazon S3 using jekyll-s3

### Amazon S3

For uploading to Amazon S3 you will need to provide a `_jekyll_s3.yml` file with the follwing format:

    s3_id: YOUR_AWS_S3_ACCESS_KEY_ID
    s3_secret: YOUR_AWS_S3_SECRET_ACCESS_KEY
    s3_bucket: your.blog.bucket.com
    cloudfront_distribution_id: YOUR_CLOUDFRONT_DIST_ID (OPTIONAL)

See the [jekyll-s3 Readme](https://github.com/laurilehmijoki/jekyll-s3) for more information.

