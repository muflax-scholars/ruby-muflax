desc "open an irb session preloaded with this library"
task :console do
  sh "pry -Ilib -rmuflax"
end

desc "build a gem from the gemspec"
task :build do
  sh "mkdir -p pkg"
  sh "gem build muflax.gemspec"
  sh "mv muflax-*.gem pkg/"
end

desc "clean pkg"
task :clean do
  sh "rm -f pkg/*"
end


desc "install a gem"
task :install => [:clean, :build] do
  sh "gem install --no-format-executable pkg/muflax-*.gem"
end

task :default => :install
