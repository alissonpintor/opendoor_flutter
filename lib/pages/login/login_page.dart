import 'package:flutter/material.dart';
import 'package:opendoor_flutter/api/situator/authentication.dart';
import 'package:opendoor_flutter/api/situator/repositories/users/get_current_user.dart';
import 'package:opendoor_flutter/api/situator/service_factory.dart';
import 'package:opendoor_flutter/interfaces/authentication.dart';
import 'package:opendoor_flutter/interfaces/service_factory.dart';
import 'package:opendoor_flutter/interfaces/session.dart';
import 'package:opendoor_flutter/interfaces/users/get_current_user.dart';
import 'package:opendoor_flutter/models/user.dart';
import 'package:opendoor_flutter/utils/config.dart';

class LoginPage extends StatelessWidget {
  Session? session;

  LoginPage({super.key});

  Future<User?> getSession(String username, String password) async {
    var preferences = Config().getPreferences();
    String baseUrl = preferences!.getString('base_url')!;
    Authentication auth = AuthenticationSituator(baseUrl: baseUrl);
    Session s = await auth.login(username: 'admin', password: 'seventh');
    session = s;

    ServiceFactory serviceFactory = ServiceFactorySituator();

    GetCurrentUserService service =
        serviceFactory.createGetCurrentUserService();
    User? currentUser = await service.execute(session!);
    print(currentUser?.name);
    return currentUser;
  }

  @override
  Widget build(BuildContext context) {
    var user = getSession('admin', 'seventh');

    return Scaffold(
      body: const Center(
        child: Text('Open Door'),
      ),
    );
  }
}
