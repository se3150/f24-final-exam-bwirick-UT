Feature: encode or decode a secret message
As a secret spy
I should be able to encode and decode messages
So that I can chat with my spy friends like a pro.

Background:
    Given I open the url "https://www.hanginghyena.com/solvers_a/caesar-cipher-decoder"

Scenario: I can successfully access the site
    When I pause for 500ms
    Then I expect that the title is "Caesar Cipher Decoder: Applies Caesar Shift; OSRS cipher solver"

Scenario: I can successfully encode a secret message
    When I select the option with the value "E" for element "#decoder-setting"
    And I select the option with the value "4" for element "#shift-amount"
    And I click on the button "#reset"
    And I add "asdfasdfasdf" to the inputfield "#letters"
    And I click on the button "#submit"
    And I pause for 1000ms
    Then I expect that element "#decoded_message" contains the text "ewhjewhjewhj"

Scenario: I can successfully decode a secret message
    When I select the option with the value "D" for element "#decoder-setting"
    And I select the option with the value "4" for element "#shift-amount"
    And I click on the button "#reset"
    And I add "ewhjewhjewhj" to the inputfield "#letters"
    And I click on the button "#submit"
    And I pause for 1000ms
    Then I expect that element "#decoded_message" contains the text "asdfasdfasdf"
