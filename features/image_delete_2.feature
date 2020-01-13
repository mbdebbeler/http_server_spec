@image-delete-2
Feature: A DELETE request

Scenario: Deleting /images/new_content.jpg returns a 204

Given I make a DELETE request to /images/new_content.jpg
Then my response should have status code 204
And there should be an empty body
