Feature:

  Scenario: When convert string to json should retain property ordering

    * string originalString = '{"echo":"echo@gmail.com","lambda":"Lambda","bravo":"1980-01-01"}'

    * json jsonBody = originalString
    * string convertedString = jsonBody
    * match originalString == convertedString