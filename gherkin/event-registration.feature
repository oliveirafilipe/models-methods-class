Feature: Can I register an Event?

  Scenario Outline: I can or I cant register an event
    Given event name is "<name>"
    And event description is "<description>"
    And event date is "<date>"
    And event page link is "<link>"
    And event image link is "<img_link>"
    When I submit to event creation route
    Then I should be receive HTTP Code "<code>"

  Examples:
    | name                                  | description                       | date       | link       | img_link   | code |
    | Mindfulness                           | An Online Class about Mindfulness | 2023-08-03 | http://foo | http://bar | 200  |
    | An event with more than 25 characters | Just a simple description         | 2023-08-03 | http://foo | http://bar | 400  |