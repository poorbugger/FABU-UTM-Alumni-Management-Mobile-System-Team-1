import 'package:sda/dioclass.dart';
import 'package:dio/dio.dart';



class ConcreteDio extends DioClass
{

  Future<List> getEvents(String action) async{
    var response = await Dio().get(getData(action));
    return response.data;
  }

  Future<List> getAlumnis(String action) async{
    var response =await Dio().get(getData(action));
    return response.data['data'];
  }
}