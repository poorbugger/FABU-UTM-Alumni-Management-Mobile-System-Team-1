
class DioClass{

  String getData(String action)
  {
    switch(action)
    {
      case 'events':
        return "http://10.0.2.2:8080/testrestfulapi/webresources/testcontroller/getData";

      case 'news':
        return "https://restcountries.eu/rest/v2/all";

      case 'alumnis':

         return "https://sheltered-scrubland-74365.herokuapp.com/index";
    }
  }




}