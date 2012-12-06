#!/usr/bin/env ruby

require 'date'

while (text = gets) do
  now = DateTime.now
  filename = now.strftime("_posts/%Y-%m-%d-devlog.md")

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

  file.puts "- #{text}"

  file.close
end

