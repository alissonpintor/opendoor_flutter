import 'package:opendoor_flutter/api/situator/repositories/users/get_current_user.dart';
import 'package:opendoor_flutter/interfaces/doors/get_list_of_doors.dart';
import 'package:opendoor_flutter/interfaces/doors/open_door.dart';
import 'package:opendoor_flutter/interfaces/doors/verify_door_status.dart';
import 'package:opendoor_flutter/interfaces/service_factory.dart';
import 'package:opendoor_flutter/interfaces/users/get_current_user.dart';

class ServiceFactorySituator implements ServiceFactory {
  @override
  GetCurrentUserService createGetCurrentUserService() {
    return GetCurrentUserServiceSituator();
  }

  @override
  GetListOfDoorsService createGetListOfDoorsService() {
    // TODO: implement createGetListOfDoorsService
    throw UnimplementedError();
  }

  @override
  OpenDoorService createOpenDoorService() {
    // TODO: implement createOpenDoorService
    throw UnimplementedError();
  }

  @override
  VerifyDoorStatusService createVerifyDoorStatusService() {
    // TODO: implement createVerifyDoorStatusService
    throw UnimplementedError();
  }
}
