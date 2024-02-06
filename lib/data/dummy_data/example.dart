// import 'dart:convert';

// import 'package:http/http.dart' as http;

// //  FETCH heygold  //
// Future<Map<String, dynamic>> slidersApi(
//     {String limit = "25", String page = "1"}) async {
//   var sliders;
//   final Map<String, dynamic> queryParameters = {
//     'limit': limit,
//     'page': page,
//   };

//   final uri = Uri.https(
//       "www.heygold.project.anyframe.de", "/api/slider", queryParameters);

//   try {
//     final response = await http.get(
//       uri,
//       headers: {'Accept': 'application/json'},
//     );

//     if (response.statusCode != 200) {
//       throw Exception('Failed to load sliders');
//     }

//     // unpack json data
//     Map<String, dynamic> responseData =
//         jsonDecode(utf8.decode(response.bodyBytes));

//     sliders = responseData["sliders"];
//     print(sliders);
//   } catch (e) {
//     rethrow;
//   }

//   return {
//     'sliders': sliders,
//   };
// }
