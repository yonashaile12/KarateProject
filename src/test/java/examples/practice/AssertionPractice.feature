Feature: Practice Assertions The karate way
  
  Scenario: Simple assertions for number
    Given def num1 = 10
    And   def num2 = 20
    Then  assert num1+num2 == 30
# unlike cucumber
# None of the given Then keyword is required
# you can always replace it by *, it's for readibility
      * print 'Hello World !'
      * print 'Hello World !' + num1
      * print 'Hello World !' , num1

  Scenario: Working with simple json
    * def myJson = {name: 'Tucky', nums: [99,88,54] }
    * print 'Whole Json is ', myJson
    * print 'The name is ', myJson.name
    #The name is  bar
    * print 'The second number in the json is' , myJson.nums[1]
    #assert the nam is Tucky, last number is 54
    * assert myJson.name == 'Tucky'
    * assert myJson.nums[2] == 54


#http://52.201.187.226:8000/spartans