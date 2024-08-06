import 'package:opendoor_flutter/interfaces/session.dart';

class SessionSituator implements Session {
  String sessionId;

  SessionSituator({required this.sessionId});

  @override
  get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  post(Map<String, String> payload) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
