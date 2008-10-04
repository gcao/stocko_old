require 'rake'
require 'rubygems'
require 'echoe'

require 'spec/rake/spectask'

Echoe.new("stocko") do |p|
  p.rubyforge_name = "stocko"
  p.description = "A small program to read/process stock data"
  p.name = 'stocko'
  p.summary = "A small program to read/process stock data"
  p.author = "Guoliang Cao"
  p.email = "caogl@verizon.net"
  p.url = "http://www.github.com/gcao/stocko"
  p.rdoc_pattern = /^(lib|bin|ext)|txt|rdoc|CHANGELOG|MIT-LICENSE$/
  rdoc_template = `allison --path`.strip << ".rb"
  p.rdoc_template = rdoc_template
end


desc "Running tests"
Spec::Rake::SpecTask.new(:test) do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
end
