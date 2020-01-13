@image-post-3
Feature: A second GET request returns 200

Scenario: Getting /images/new-content.jpg returns a 200
  Given that I make a GET request to /images/new_content.jpg again
  Then my response should have status code 200
