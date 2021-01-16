import 'package:sda/dioclass.dart';
import 'package:dio/dio.dart';



class ConcreteDio extends DioClass
{

  Future<List> getEvents() async{
    var response = await Dio().get(getEventUrl());
    return response.data;
  }

  Future<List> getAlumnis() async{
    var response =await Dio().get(getAlumniUrl());
    return response.data['data'];
  }
}