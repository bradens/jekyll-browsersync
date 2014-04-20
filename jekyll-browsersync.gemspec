
Gem::Specification.new do |s|
  s.name        = 'jekyll-browsersync'
  s.version     = '1.0.0.pre'
  s.summary     = "Jekyll plugin to use browser-sync server instead of WEBrick"
  s.description = <<-EOF
    This project is a plugin for the Jekyll static website generator to allow users to use browser-sync when building
    locally for easy testing cross-browser and quicker testing of updates.
  EOF
  s.license     = 'MIT'
  s.authors     = ["Matthew Scharley"]
  s.email       = 'matt.scharley@gmail.com'
  s.files       = [*Dir["lib/**/*.rb"], "README.md", "LICENSE"]
  s.homepage    = 'https://github.com/mscharley/jekyll-compass'

  s.add_runtime_dependency 'jekyll', '>= 1.3', '< 3'

end
