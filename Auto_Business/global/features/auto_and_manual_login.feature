Feature: Manual and Automatic login
  Scenario: Going to make login manually with a number
    Given I enter to the onboarding to make manual login
    When I press the button "Validar manualmente"
    Then I enter my temporary code
    And I press the button "Continuar" to get into the onboarding
    Then I select a chat from the contact Activity
    And I select the chat to send a message
    Then I send the massage to the contact
    And I send an audio massage
    When I press the button "Image" to see the options to send an image
    Then I make a phonecall and a videocall
    And I hangout the call to make a videocall
    Then I go to profile
    And I logout


  Scenario: Make an Automatic FLow
    Given I want to make the same flow but automatic
    When I recive the temporary password y press the button "Continuar"
    Then I search for a contact to send a message
    And I write the text message
    Then I send the other two messages
    And I send the audio message
    Then I send the image message
    And I make a phonecall flow
    Then I make a video call flow
    And I go to profile options
    Then I logout from the app


















