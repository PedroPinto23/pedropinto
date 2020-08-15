import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class SendEmail {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  Future<Null> send() async {
    await googleSignIn.signIn().then((data) {
      data.authHeaders.then((result) {
        var header = {
          'Authorization': result['Authorization'],
          'X-Goog-AuthUser': result['X-Goog-AuthUser']
        };
        testingEmail(data.email, header);
      });
    });
  }

  Future<Map> testingEmail(String userId, Map header) async {
    header['Accept'] = 'application/json';
    header['Content-type'] = 'application/json';

    var from = userId;
    var to = userId;
    var subject = 'test send email';
    //var message = 'worked!!!';
    var message = "Hi<br/>Html Email";
    var content = '';

    var bytes = utf8.encode(content);
    var base64 = base64Encode(bytes);
    var body = json.encode({'raw': base64});

    String url =
        'https://www.googleapis.com/gmail/v1/users/$userId/messages/send';

    final http.Response response =
        await http.post(url, headers: header, body: body);
    if (response.statusCode != 200) {
      print('error: ' + response.statusCode.toString());
      return {};
    }
    final Map<String, dynamic> data = json.decode(response.body);
    print('ok: ' + response.statusCode.toString());
    return data;
  }
}
