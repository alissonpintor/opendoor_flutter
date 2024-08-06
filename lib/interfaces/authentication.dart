import 'package:opendoor_flutter/interfaces/session.dart';

interface class Authentication {
  Session login(String username, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  logout(Session session) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
