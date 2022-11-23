# frozen_string_literal: true

require_relative "lib/data_type/version"

Gem::Specification.new do |spec|

  spec.name = "data_type"
  spec.version = DataType::VERSION
  spec.authors = ["Bradley J. Tannor"]
  spec.email = ["tannorbradley@gmail.com"]

  spec.summary = "A DataType class library"
  spec.description = "The DataType class defines a data type set. Defines an atomic data type. The Data types are Numeric, TrueClass, FalseClass, Symbol, and NilClass. Provides predicates verifying classes and class instances are data types."
  spec.homepage = "https://github.com/sci3nti5t/data_type"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sci3nti5t/data_type"
  spec.metadata["changelog_uri"] = "https://github.com/sci3nti5t/data_type/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development dependencies
  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "minitest", "~> 5"
  spec.add_development_dependency "simplecov", "~> 0"
  spec.add_development_dependency "rbs", "~> 2"
  spec.add_development_dependency "yard", "~> 0"

end
