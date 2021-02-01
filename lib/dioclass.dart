
class DioClass{

  String getData(String action)
  {
    switch(action)
    {
      case 'events':
        return "https://testapievent.herokuapp.com/index";

      case 'news':
        return "https://testdatanews.herokuapp.com/index";

      case 'alumnis':

         return "https://sheltered-scrubland-74365.herokuapp.com/index";

      case 'eventReport':
        return "https://alumni-event-api.herokuapp.com/index";

      case 'sponsorReport':
        return "https://alumni-sponsorreport-api.herokuapp.com/index";

      default:
        throw("An error has occurred");
    }
  }




}