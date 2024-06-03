// service/chat_service.dart
import 'package:dio/dio.dart';
import 'package:projectexamui/model/chat_model.dart';



 Future<List<ch_model>> getData() async {
  Dio req = Dio();
  // https://freetestapi.com/api/v1/birds/1
  // https://freetestapi.com/api/v1/birds?limit=3
  Response response = await req.get("https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/people");
 
  // Birdmodel bird = Birdmodel.fromMap(response.data);
  // List <Birdmodel> bird =List.generate(
  //     response.data.length,
  //     (index) => Birdmodel.fromMap(
  //       response.data[index],
  //     ),
  //     );
  print(response);
  try {
    List <ch_model> bird =List.generate(
      response.data.length,
      (index) => ch_model.fromMap(
        response.data[index],
      ),
  );
   return bird;
  } catch (e) {
   print(e);
   return [];
  }
    
}
