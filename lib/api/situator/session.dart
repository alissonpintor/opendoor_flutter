import 'dart:convert';

import 'package:opendoor_flutter/exceptions/http_400_bad_request.dart';
import 'package:opendoor_flutter/exceptions/http_401_unauthorized.dart';
import 'package:opendoor_flutter/exceptions/http_403_forbidden.dart';
import 'package:opendoor_flutter/exceptions/http_404_not_found.dart';
import 'package:opendoor_flutter/exceptions/http_503_service_unavailable.dart';
import 'package:opendoor_flutter/interfaces/session.dart';
import 'package:http/http.dart' as http;

class SessionSituator implements Session {
  String baseUrl;
  String sessionId;

  SessionSituator({required this.baseUrl, required this.sessionId});

  @override
  Future<dynamic> get(String resource) async {
    Uri resourceUrl = Uri.parse('$baseUrl$resource');

    http.Response response = await http.get(
      resourceUrl,
      headers: {
        'cookie': sessionId,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 400) throw Http400BadRequest();
    if (response.statusCode == 401) throw Http401Unauthorized();
    if (response.statusCode == 403) throw Http403Forbidden();
    if (response.statusCode == 404) throw Http404NotFoundException();
    if (response.statusCode == 503) throw Http503ServiceUnavailable();

    dynamic data = jsonDecode(response.body);
    return data;
  }

  @override
  post(String resource, {required Map<String, String> payload}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  put(String resource, {required Map<String, String> payload}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
