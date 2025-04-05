Feature: Purchase the order

  //pre-condition
  Background:
    Given I landed on Ecommerce Page


  Scenario Outline: Positive Test of Submitting the Order
    Given Logged in with username <name> and password <password>
    When I add product <productname> to Cart
    And  Checkot <productname> and submit the order
    Then "Thankyou for the order."  message is displayed on ConfirmationPage
    Examples:
    |name                 | password  | productname|
    |gnidan12345@gmail.com|Qwerty12345| ZARA COAT 3|