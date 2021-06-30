Feature:


  Background:
    * def port = karate.start('classpath:examples/simple-post-mock.feature').port
    * def simpleUrl = 'http://localhost:' + port + '/simple'

  Scenario:
    * string originalString = '{"echo":"echo@gmail.com","lambda":"Lambda","bravo":"1980-01-01"}'
    * json payload = originalString

    Given url simpleUrl
    And request payload
    When method POST
    Then status 200

    * string responseString = response
    #* match responseString = '{"tango":"Alice","foxtrot":"0.0.0.0","sierra":"Bob"}'

    * string payloadString = payload
    * match payloadString == originalString
