@image-post-2
Feature: A POST request returns 200

Scenario: Posting /images/new-content.jpg returns a 200
  Given that I make a POST request to /images/new_content.jpg
  Then my response should have status code 200
