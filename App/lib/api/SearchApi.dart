import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Fcapi.dart';

Future<FcJdata> fetchSearchdata(String search) async
{
  final response = await http.get(
      Uri.parse("http://34.134.67.181:8080/api/search?facName="+search),
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
  );
  print(response.statusCode);

  if (response.statusCode == 200)
  {

    String jsonData = response.body;

    print(jsonDecode(jsonData));

    return FcJdata.fromJson(jsonDecode(jsonData));
  } else
  {
    throw Exception('Failed to load data');
  }
}