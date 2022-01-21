Feature: ABSA Assessment

    Background:
      ## Defining the Reusable JAVA Class and Method
      * def CommonMethod = Java.type('ReusableMethod.utility')
      * def Rand = new CommonMethod()

      ## Defining the reusable Feature - date
      * def DateObject = call read('classpath:ReusableMethod/ReusableFeatureFunctions.feature')
      * def date = DateObject.CurrentDate_YYYYMMDD()

  @MyFirst
    Scenario Outline: validate the response that is returned using xpath validation for tags/values

      * def Last4Digit = Rand.generateRandomValue(4);
      * def MsgId = '<MsgIdInitialTemplate>' + date + "/" + Last4Digit
      * print 'The Message ID is: ', MsgId

      * def xmlPayload = read('classpath:payload/payload.xml')
      * print 'The payload is: ', xmlPayload

      Given url baseURl 
      And path baseURLpath
      And request xmlPayload
      When method POST 
      Then status 200

      * def payloadResponse = response
      * call read('classpath:payloadValidation/FileValidation.feature')

      Examples:
      |MsgIdInitialTemplate|CreDtTm             |NbOfTxs|CtrlSum    |InitgPtyNM|PmtInfId  |PmtMtd|ReqdColltnDt|CdtrNM|PhneNb        |EmailAdr              |CdtrAcctID|MmbId |EndToEndId    |SvcLvlPrtry|LclInstrmPrtry|SeqTp|CtgyPurpPrtry|InstdAm|MndtId                |MmbId |DbtrNM|DbtrAcctID|TPPrtry|Ustrd                   |RltdDt    |
      |021/DDINP/Puleng/   | 2021-11-18T10:46:53|3      |12142835832|puleng    |PULENG2005|DD    |2021-11-18  |Jensen|+27-0636825482|tester.1233@obta.co.za|123456788 |632005|11680410171886|AC         |10            |RCUR |0033         |100    |0016202101224814705123|632005|JENSEN|12345213  |CACC   |123456789180723542381243|2021-11-18|
      |021/DDINP/Paul/     | 2022-01-20T10:46:53|1      |12142840202|Paul      |Paul2005  |DD    |2022-01-20  |Thabo |+27-0636821258|tester.best@obta.co.za|118456788 |638905|11680478971886|BA         |01            |RCUR |0012         |120    |0016202101224814701234|633005|Thabo |12347895  |CACC   |123456789180723542382345|2022-01-20|
