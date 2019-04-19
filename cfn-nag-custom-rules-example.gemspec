# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'cfn-nag-custom-rules-example'
  s.license       = 'MIT'
  s.version       = '0.0.1'
  s.bindir        = 'bin'
  s.executables   = %w[cfn_nag_custom]
  s.authors       = ['Eric Kascic']
  s.summary       = 'Example CFN Nag Wrapper'
  s.description   = 'Wrapper to show how to define custom rules with cfn_nag'
  s.homepage      = 'https://github.com/stelligent/cfn_nag'
  s.files         = Dir.glob('lib/**/*.rb')

  s.require_paths << 'lib'

  s.required_ruby_version = '>= 2.2'

  s.add_development_dependency('rspec', '~> 3.4')
  s.add_development_dependency('rubocop')

  s.add_runtime_dependency('cfn-nag', '>= 0.3.73')
end
