Given(/^I want to make the same flow but automatic$/) do
  @alog = Auto.new(self )
  @alog.setNUmber
end

When(/^I recive the temporary password y press the button "([^"]*)"$/) do |arg|
  @mlog = Login.new(self )
  @mlog.ingresarPerfil
end

Then(/^I search for a contact to send a message$/) do
  @mlog = Login.new(self )
  @mlog.selectContacts
end

And(/^I write the text message$/) do
  @mlog = Login.new(self )
  @mlog.selectChat
end

Then(/^I send the other two messages$/) do
  @mlog = Login.new(self )
  @mlog.enviar
end

And(/^I send the audio message$/) do
  @mlog = Login.new(self )
  @mlog.envAudio
end

Then(/^I send the image message$/) do
  @mlog = Login.new(self )
  @mlog.sendImage
end

And(/^I make a phonecall flow$/) do
  @mlog = Login.new(self )
  @mlog.makeCall
end

Then(/^I make a video call flow$/) do
  @mlog = Login.new(self )
  @mlog.videoCall
end

And(/^I go to profile options$/) do
  @mlog = Login.new(self )
  @mlog.toProfile
end

Then(/^I logout from the app$/) do
  @mlog = Login.new(self )
  @mlog.logout
end