# -*- encoding: utf-8 -*-
require "bundler/setup"
require "stringex"

task :default => ["preview"]

desc "Start preview / development server"
task :preview do
  system "middleman"
end

desc "Staging"
task :staging do
  system "rm -rf build/"
  system "middleman b"
  system "rsync -vru -e \"ssh\" --del build/* xa6195@xa6.serverdomain.org:/home/www/stagingvimfest/"
  puts '# Please refer to http://vimfest.wikimatze.de to visit the staging system'
end

desc "Deploy"
task :deploy do
  system "rm -rf build/"
  system "middleman b"
  system "rsync -vru -e \"ssh\" --del build/* xa6195@xa6.serverdomain.org:/home/www/vimfest/"
  puts '# Please refer to http://vimfest.org to visit the live system'
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
