
# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "graphql_types/version"

Gem::Specification.new do |spec|
  spec.name          = "graphql_types"
  spec.version       = GraphqlTypes::VERSION
  spec.authors       = ["FUJI Goro (gfx)"]
  spec.email         = ["goro-fuji@bitjourney.com"]

  spec.summary       = 'Extra types for graphql-ruby'
  spec.description   = 'Extra types for graphql-ruby: JSON, Date, and BigInt'
  spec.homepage      = "https://github.com/bitjourney/graphql_json_type"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 2.3'

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "graphql"
end
