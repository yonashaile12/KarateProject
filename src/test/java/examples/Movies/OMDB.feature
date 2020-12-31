Feature: Searching Movie from open Movie DB

  Background:
    * url 'http://www.omdbapi.com/'
    *  param apikey = '3f49c7c6'
    
    Scenario: 
      Given param apikey = '3f49c7c6'
      And param t = 'Wonder Woman 1984'
      When method get
      Then status 200
       # assert 3-5 fields below here
        # And match
      * match response.Title == 'Wonder Woman 1984'
      * match response.Year == '2020'
      * match response.Runtime == '151 min'
      * match response.Rated == 'PG-13'
      * match response.Director == 'Patty Jenkins'


    Scenario Outline: Search for multiple movie with example table
         #param apikey = '3f49c7c6'
        Given param t = '<movie_name>'
        When method get
        Then status 200
        And match response.Year == '<year>'
        # command + option + l
      Examples:
        | movie_name                     | year |
        | Wonder Woman 1984              | 2020 |
        | Life is beautiful              | 1997 |
        | Bad Boys for Life              | 2020 |
        | Contact                        | 1997 |
        | The Godfather                  | 1972 |
        | The Good, the Bad and the Ugly | 1966 |
