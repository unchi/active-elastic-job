# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'active_elastic_job/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY
  spec.name          = 'active_elastic_job2'
  spec.version       = ActiveElasticJob.version
  spec.authors       = ['unchi']
  spec.email         = ['developer.japan@gmail.com']
  spec.summary       = 'Active Elastic Job is a simple to use Active Job backend for Rails applications deployed on the Amazon Elastic Beanstalk platform.'
  spec.description   = 'Run background jobs / tasks of Rails applications deployed in Amazon Elastic Beanstalk environments. Active Elastic Job is an Active Job backend which is easy to setup. No need for customised container commands or other workarounds.'
  spec.license       = 'MIT'
  spec.homepage      = 'https://github.com/unchi/active-elastic-job'

  spec.files         = Dir.glob('lib/**/*') + [ 'active-elastic-job.gemspec' ]
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'aws-sdk-sqs', '~> 1'
  spec.add_dependency 'rails', '>= 4.2'
end
