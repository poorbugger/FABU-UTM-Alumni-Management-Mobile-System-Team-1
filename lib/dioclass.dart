
class DioClass{

  String getData(String action)
  {
    switch(action)
    {
      case 'events':
        return "https://restcountries.eu/rest/v2/all";

      case 'news':
        return "https://restcountries.eu/rest/v2/all";
    }
  }



  String getAlumniUrl()
  {
    return "https://reqres.in/api/unknown";
  }
}