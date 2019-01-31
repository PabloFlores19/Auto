require 'calabash-android/calabash_steps'

Given(/^I want to open claroconnect application$/) do
  @home = Homepage.new(self)
  @home.validateElements
end