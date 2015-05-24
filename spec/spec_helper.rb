if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

Dir['*.rb'].each do |file|
  require_relative "../#{file}"
end
