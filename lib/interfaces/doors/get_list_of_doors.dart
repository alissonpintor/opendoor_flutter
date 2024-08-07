import 'package:opendoor_flutter/interfaces/session.dart';
import 'package:opendoor_flutter/models/door.dart';

interface class GetListOfDoorsService {
  final String resource = '';

  Future<List<Door?>> execute(Session session) async {
    // TODO: implement open
    throw UnimplementedError();
  }
}
