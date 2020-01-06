@image-delete
Feature: Executing an image DELETE request

Scenario: Deleting /images/delete_test.jpg returns a 204
  Given I make a GET request to /images/delete_test.jpg
  Then my response should have status code 200
  And there should be a body that is an image
  Given I make a DELETE request to /images/delete_test.jpg
  Then my response should have status code 204
  And there should be an empty body
  Given I make a GET request to /images/delete_test.jpg again
  Then my response should have status code 204
  And there should be an empty body
