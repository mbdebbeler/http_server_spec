@image-delete-3
Feature: A GET request after a DELETE returns 204

Scenario: Deleting /images/new_content.jpg returns a 204

Given I make a GET request to /images/new_content.jpg again
Then my response should have status code 204
And there should be an empty body
