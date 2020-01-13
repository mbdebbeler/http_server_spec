@image-delete-1
Feature: A GET request prior to a delete

Scenario: Deleting /images/new_content.jpg returns a 204
  Given I make a GET request to /images/new_content.jpg
  Then my response should have status code 200
  And there should be a body that is an image
