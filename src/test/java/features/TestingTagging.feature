Feature: ABSA check for reusability

  @RunwithTagCheck
  Scenario: validate the response that is returned using xpath validation for tags/values
      ## Defining the Reusable JAVA Class and Method
    * def CommonMethod = Java.type('ReusableMethod.utility')
    * def Rand = new CommonMethod()

      ## Defining the reusable Feature - date
    * def DateObject = call read('classpath:ReusableMethod/ReusableFeatureFunctions.feature')
    * def date = DateObject.CurrentDate_YYYYMMDD()
    * def Last4Digit = Rand.generateRandomValue(4);
    * def MsgId = '021/DDINP/Puleng/' + date + "/" + Last4Digit
    * print 'The Message ID is: ', MsgId

