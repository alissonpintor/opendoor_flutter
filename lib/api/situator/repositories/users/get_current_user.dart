import 'package:opendoor_flutter/interfaces/session.dart';
import 'package:opendoor_flutter/interfaces/users/get_current_user.dart';
import 'package:opendoor_flutter/models/user.dart';

class GetCurrentUserServiceSituator implements GetCurrentUserService {
  final String resource = '/api/current-user';

  @override
  Future<User?> execute(Session session) async {
    dynamic data = await session.get(resource);

    User currentUser = User(
      id: data['id'],
      name: data['name'],
    );

    return currentUser;
  }
}
