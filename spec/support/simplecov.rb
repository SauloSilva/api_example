require 'simplecov'
SimpleCov.minimum_coverage 100

SimpleCov.start 'rails' do
  minimum_coverage 100

  add_group 'Serializers', 'app/serializers'
end
