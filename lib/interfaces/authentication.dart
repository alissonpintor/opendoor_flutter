import 'package:opendoor_flutter/interfaces/session.dart';

interface class Authentication {
  Future<Session> login(String username, String password) async {
    // TODO: implement login
    throw UnimplementedError();
  }

  logout(Session session) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
