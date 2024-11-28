import 'dart:convert';

import 'package:flutter_book/user.dart';

//서버에서 데이터를 가져오는 역할을 하는 repository
class UserRepository {
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 1));
    //
    String dummy = """
{
    "name": "jane",
    "age": 20
}
""";
//
    Map<String, dynamic> map = jsonDecode(dummy);
    return User.fromJson(map);
  }
}
