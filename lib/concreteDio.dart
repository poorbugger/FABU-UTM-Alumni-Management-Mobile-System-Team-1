import 'package:sda/dioclass.dart';
import 'package:dio/dio.dart';



class ConcreteDio extends DioClass
{

  Future<List> getEvents(String action) async{
    var response = await Dio().get(getData(action));

    void executeClientErrorState() async{
      throw "Something's wrong with client. PLease try again";
    }

    void executeServerErrorState() async{
      throw "Something's wrong with server, please try again later";
    }

    void executeNotFoundState() async{
      throw "Data not found";
    }

    switch(response.statusCode)
    {
      case 200:
        return response.data;

      case 404:
        {
          executeNotFoundState();
          break;
        }


      case 400:
        {
          executeServerErrorState();
          break;
        }

      case 500:
        {
          executeClientErrorState();
          break;
        }

      default:
        {
          throw "Data retrieval failure";
        }
    }

  }

  Future<List> getAlumnis() async{
    var response =await Dio().get(getAlumniUrl());
    return response.data['data'];
  }
}