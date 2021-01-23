
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
    //10.0.2.2:8080/Alumni_System/mobile-api/alumni/getdata
    return "https://reqres.in/api/unknown";

  }
}