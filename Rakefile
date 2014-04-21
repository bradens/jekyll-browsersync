#!/bin/sh

task :clean do
  Dir['*.gem'].each do |file|
    rm file
  end
end

task :gem do
  sh 'gem', 'build', 'jekyll-browsersync.gemspec'
end

task :install => [:clean, :gem] do
  sh 'gem', 'install', *Dir['*.gem']
end
