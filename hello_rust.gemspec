# frozen_string_literal: true

require_relative "lib/hello_rust/version"

Gem::Specification.new do |spec|
  spec.name = "hello_rust"
  spec.version = HelloRust::VERSION
  spec.authors = ["Gui Vieira"]
  spec.email = ["guialbuk@gmail.com"]

  spec.summary = "Test"
  spec.description = "Test"
  spec.homepage = "https://github.com/guialbuk/hellor_rust"
  spec.required_ruby_version = ">= 3.2.0"
  spec.required_rubygems_version = ">= 3.4.6"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/guialbuk/hellor_rust"
  spec.metadata["changelog_uri"] = "https://github.com/guialbuk/hellor_rust"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/hello_rust/Cargo.toml"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata["rubygems_mfa_required"] = "true"
end
