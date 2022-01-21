Feature: Reusable Functions in Feature file

  Scenario:
    * def CurrentDate_YYYYMMDD =
      """
      function() {
      var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
      var sdf = new SimpleDateFormat("YYYYMMDD");
      var date = new java.util.Date();
      return sdf.format(date)
      }
      """
    * print 'CurrentDate is ', CurrentDate_YYYYMMDD()