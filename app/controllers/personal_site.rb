require 'rack'
require 'pry'

# Defines Personal Site
class PersonalSite
  def self.call(env)
    ['200', { 'Content-Type' => 'text/html' }, ['Welcome!']]
  end
end
