import'package:dio/dio.dart';
import '../../constants/constants.dart';
class DioHelper {
static late Dio dio;
static init(){
  dio =Dio(BaseOptions(baseUrl: "https://www.breakingbadapi.com/api/",receiveDataWhenStatusError: true),);

}
//Future <List<dynamic>> getAllCharacters()async{
//  Response response=await dio!.get('character');
//  print(response.data.toString());
//  return response.data;
//
//}
static Future getChatacter({required String url,Map<String,dynamic>? query})
async{
  return await dio.get(url,queryParameters: query);
}

}