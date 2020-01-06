@image-post-1
Feature: A GET prior to POST returns 204

Scenario: Getting /images/new-content.jpg returns a 204
  Given that I make a GET request /images/new_content.jpg
  Then my response should have status code 204
