# -*- encoding: utf-8 -*-
require "bundler/setup"
require "stringex"

task :default => ["preview"]

desc "Start preview / development server"
task :preview do
  system "middleman"
end

desc "Deploy"
task :deploy do
  system "middleman deploy"
end

desc "Generate Page"
task :page, [:name] do |t, args|

  name = args.name
  file_name = args.name.to_url
  data_name = file_name.sub '-', '_'
  
  partial = "source/partials/_#{file_name}.erb"

  touch partial
  File.open(partial, "w") do |line|
    line.write "
    <div class='row'>
      <div class='col-xs-12'>
        <div class='alert alert-success'>
          <i class='fa fa-success'></i>&nbsp;
          You have successfully added the <strong>#{name}</strong> page to <strong><%= data.global.title %></strong> site.
          Now you can create the <code>/data/#{data_name}.yml</code> 
          <a href='http://middlemanapp.com/advanced/local-data/' target='_blank'>local data</a> file.
        </div>
      </div>
    </div>
    "
  end
  File.open("data/pages.yml", "a") do |line|
    line.write "- #{name}: null\n"
  end
end
