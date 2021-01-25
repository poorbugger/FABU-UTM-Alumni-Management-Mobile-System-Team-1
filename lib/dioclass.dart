
class DioClass{

  String getData(String action)
  {
    switch(action)
    {
      case 'events':
        return "https://reqres.in/api/users/23";

      case 'news':
        return "https://restcountries.eu/rest/v2/all";

      case 'alumnis':

         return "https://sheltered-scrubland-74365.herokuapp.com/index";
    }
  }




}