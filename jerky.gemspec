lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jerky/version"

Gem::Specification.new do |gem|
  gem.name          = "jerky"
  gem.version       = Jerky::VERSION
  gem.authors       = ["Jarrett Lusso"]
  gem.email         = ["jclusso@gmail.com"]

  gem.summary       = 'Jerky is a gem to help you use your Rails Credentials and Configurations.'
  gem.description   = 'Jerky is a gem to help you use your Rails Credentials and Configurations.'
  gem.homepage      = 'https://github.com/jclusso/jerky'
  gem.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gem.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  gem.bindir        = "exe"
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 2.0"
  gem.add_development_dependency "rake", "~> 10.0"
end
