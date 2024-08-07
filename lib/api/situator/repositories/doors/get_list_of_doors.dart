import 'package:opendoor_flutter/interfaces/doors/get_list_of_doors.dart';
import 'package:opendoor_flutter/interfaces/session.dart';
import 'package:opendoor_flutter/models/door.dart';

class GetListOfDoorsServiceSituator implements GetListOfDoorsService {
  @override
  Future<List<Door>> execute(Session session) async {
    // TODO: implement execute
    throw UnimplementedError();
  }

  @override
  // TODO: implement resource
  String get resource => throw UnimplementedError();
}
