// service/chat_service.dart
import 'package:dio/dio.dart';
import 'package:projectexamui/model/chat_model.dart';

List<ch_model>chat_app=List.empty();

 Future<List<ch_model>> getData() async {
  Dio req = Dio();
  // https://freetestapi.com/api/v1/birds/1
  // https://freetestapi.com/api/v1/birds?limit=3
  Response response = await req.get("https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people");
 

  try {
    List <ch_model> chat =List.generate(
      response.data.length,
      (index) => ch_model.fromMap(
        response.data[index],
      ),
  );
  chat_app=chat;
   return chat;
  } catch (e) {
   print(e);
   return [];
  }
    
}
