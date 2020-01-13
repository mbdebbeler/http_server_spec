@image-get
Feature: Executing an image GET request

  Scenario: Getting /images/big-test.jpg returns a 200
    Given I make a GET request to "/images/big-test.jpg"
    Then my response should have status code 200
    And my response body should be type image
    And my response should have an image sent back in the body
