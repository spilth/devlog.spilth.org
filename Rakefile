require 'date'

task :log do
  puts "Logging..."

  while (text = STDIN.gets) do
    if text.chomp != ""
      now = DateTime.now
      filename = now.strftime("_posts/%Y-%m-%d-devlog.devlog")

      if (!File.exists?(filename))
        title = now.strftime("%Y-%m-%d")
        file = File.open(filename, 'w') 
        file.puts <<eos
---
title: #{title}
layout: default
---
eos

      else
        file = File.open(filename, 'a')
        
      end

      file.puts "#{now}\t#{text}"

      file.close
    end
  end
end

desc "Generate web site using jekyll"
task :generate do
  puts "Generating site..."
  system('bundle exec jekyll')
end

desc "Run jekyll server and autogenerate files"
task :server do
  puts "Running server..."
  system('bundle exec jekyll --server --auto')
end

desc "Upload to Amazon S3 using jekyll-s3"
task :upload => :generate do
  puts "Uploading site..."
  system('bundle exec jekyll-s3')
end

