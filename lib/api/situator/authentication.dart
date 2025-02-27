import 'dart:convert';

import 'package:opendoor_flutter/api/situator/session.dart';
import 'package:opendoor_flutter/exceptions/http_400_bad_request.dart';
import 'package:opendoor_flutter/exceptions/http_401_unauthorized.dart';
import 'package:opendoor_flutter/exceptions/http_403_forbidden.dart';
import 'package:opendoor_flutter/exceptions/http_503_service_unavailable.dart';
import 'package:opendoor_flutter/interfaces/authentication.dart';
import 'package:opendoor_flutter/interfaces/session.dart';
import 'package:http/http.dart' as http;

class AuthenticationSituator implements Authentication {
  final String loginEndpoint = 'api/login';
  String baseUrl;

  AuthenticationSituator({required String this.baseUrl});

  @override
  Future<Session> login(
      {required String username, required String password}) async {
    Uri resourceUrl = Uri.parse('$baseUrl/$loginEndpoint');
    SessionSituator session;
    String body = jsonEncode({
      "userName": username,
      "password": password,
      "rememberMe": true,
      "accountId": 0
    });

    http.Response response = await http.put(
      resourceUrl,
      body: body,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 400) throw Http400BadRequest();
    if (response.statusCode == 401) throw Http401Unauthorized();
    if (response.statusCode == 403) throw Http403Forbidden();
    if (response.statusCode == 503) throw Http503ServiceUnavailable();
    if (!response.headers['set-cookie']!.contains('Seventh.Auth'))
      throw Http400BadRequest();

    String sessionId = response.headers['set-cookie']!;
    RegExp regex = RegExp("(^| )Seventh.Auth=([^;]+)");
    sessionId = regex.firstMatch(sessionId)!.group(0)!;
    session = SessionSituator(baseUrl: baseUrl, sessionId: sessionId);

    return session;
  }

  @override
  logout(Session session) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
