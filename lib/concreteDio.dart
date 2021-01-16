import 'package:sda/dioclass.dart';
import 'package:dio/dio.dart';



class ConcreteDio extends DioClass
{
  Future<List> getEvents() async{
    var response = await Dio().get("https://restcountries.eu/rest/v2/all");
    return response.data;
  }
}