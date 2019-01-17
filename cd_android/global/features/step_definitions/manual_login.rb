require 'calabash-android'
require 'calabash-android/abase'

Given(/^I enter to the onboarding to make manual login$/) do
  @mlog = Login.new(self )
  @mlog.loginpage
end
When(/^I press the button "([^"]*)"$/) do |arg|
  @mlog = Login.new(self)
  @mlog.manualvalidate
end
Then(/^I enter my temporary code$/) do
  @mlog = Login.new(self)
  @mlog.ingresarContrasena
end
And(/^I press the button "([^"]*)" to get into the onboarding$/) do |arg|
  @mlog = Login.new(self)
  @mlog.ingresarPerfil
end
Then(/^I select a chat from the contact Activity$/) do
  @mlog = Login.new(self)
  @mlog.selectContacts
end
And(/^I select the chat to send a message$/) do
  @mlog = Login.new(self)
  @mlog.selectChat
end
Then(/^I send the massage to the contact$/) do
  @mlog = Login.new(self)
  @mlog.enviar
end
And(/^I send an audio massage$/) do
  @mlog = Login.new(self)
  @mlog.envAudio
end
When(/^I press the button "([^"]*)" to see the options to send an image$/) do |arg|
  @mlog = Login.new(self)
  @mlog.sendImage
end
Then(/^I make a phonecall and a videocall$/) do
  @mlog = Login.new(self)
  @mlog.makeCall
end
And(/^I hangout the call to make a videocall$/) do
  @mlog = Login.new(self)
  @mlog.videoCall
end
Then(/^I go to profile$/) do
  @mlog = Login.new(self)
  @mlog.toProfile
end
And(/^I logout$/) do
  @mlog = Login.new(self)
  @mlog.logout
end