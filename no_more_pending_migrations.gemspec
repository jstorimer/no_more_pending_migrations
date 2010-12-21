Gem::Specification.new do |s|
  s.name        = "no_more_pending_migrations"
  s.version     = '0.0.2'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jesse Storimer"]
  s.email       = ["jstorimer@gmail.com"]
  s.summary     = s.description = %q{Put `rake db:migrate` on auto-pilot}
  s.homepage    = %q{https://github.com/jstorimer/no_more_pending_migrations}

  s.files         = Dir.glob('lib/**/*')
  s.require_paths = ["lib"]
end
