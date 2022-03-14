import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart' as fbs;



class subspost{
////  shoot list  of fac number to server  and get post while register
  final _auth =fbs.FirebaseAuth.instance;

  var resultc = true;
      void postsubs(List<int> sublist) async{
        final user = await _auth.currentUser!;
        final String Authorization = user.uid as String;
        const String apiUrl = "http://34.134.67.181:8080/api/subscribe";
        var requestbody = jsonEncode
          ({
          "fac_id": sublist
        });
        print(Authorization);
        print(requestbody);
        // final String Authorization = "yJzO0clzZhbE7MYike7m0w3z5s73";
        final response = await http.post(Uri.parse(apiUrl),
            headers: {
              HttpHeaders.authorizationHeader: Authorization,
              "Content-type": "application/json",
              "Access-Control-Allow-Origin": "*"},
            body:requestbody
        );

        print(response.statusCode);

        if(response.statusCode == 200)
        {
          final String responseString = response.body;
          print(responseString) ;
          resultc = true;
        }
        else
        {
          resultc = false;
        }
      }




}