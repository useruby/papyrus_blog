# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "papyrus_blog"
  s.summary = "Blog engine based on papyrus gem"
  s.description = "Blog engine based on papyrus gem"
  s.files = Dir["{app,lib,spec}/**/*"] + ["LICENSE.txt", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"
end
