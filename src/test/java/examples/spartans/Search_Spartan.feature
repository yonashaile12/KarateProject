Feature: Searching by name and gender

  Background:
    * url spartan_base_url

  Scenario: User should be able to seach
    Given path '/api/spartans/search'
    And param nameContains = 'a'
    And param gender = 'Female'
    When method get
    Then status 200

    # verify the gender field returned correctly
    * match each response.content[*].gender == 'Female'
    * def responseToLowerCase = karate.lowerCase(response)
    * match each responseToLowerCase.content[*].name contains "a"


