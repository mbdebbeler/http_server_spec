@simple-redirect
Feature: Returning a moved permanently response

  Scenario: Getting a resource that has been moved to a different location
    Given I make an GET request to "/redirect"
    Then my response should have status code 301
    And my response should have a location header with the "/simple_get" URI
    And my response should have an empty body
