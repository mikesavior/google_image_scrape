Gem::Specification.new do |s|
  s.name        = "googscrape"
  s.version     = "0.0.2"
  s.summary     = "scrape google image marquees."
  s.description = "google image marquee scraper."
  s.authors     = ["MK"]
  s.email       = ""
  s.files         = Dir["lib/**/*.rb"]
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.add_dependency 'nokogiri'
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

  s.homepage    =
    "https://rubygems.org/gems/google_image_scrape"
  s.license       = "GPL-2.0"
end
